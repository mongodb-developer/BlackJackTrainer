//
//  Decisions.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 12/10/2021.
//

import Foundation
import RealmSwift

class DecisionList: EmbeddedObject, ObjectKeyIdentifiable {
    @Persisted var decisions = List<Decision>()
    
    convenience init(_ decisionList: [Decision]) {
        self.init()
        decisionList.forEach() { decision in
            decisions.append(decision)
        }
    }
}

enum HandType: Int, PersistableEnum {
    case normal = 1
    case soft = 2
    case split = 3
}

class Decisions: Object, ObjectKeyIdentifiable {
    @Persisted var decisions = List<DecisionList>()
    //    @Persisted var handType = HandType.normal
    @Persisted var isSoft = false
    @Persisted var isSplit = false
    
    func bootstrap(defaults: [[Decision]], handType: HandType) {
        do {
            try Realm().write {
                decisions = List<DecisionList>()
                isSoft = handType == .soft
                isSplit = handType == .split
                defaults.forEach() { decisionList in
                    decisions.append(DecisionList(decisionList))
                }
            }
        } catch {
            print("Can't bootstrap decision data: \(error.localizedDescription)")
        }
    }
}

extension Decisions {
    static var areDecisionsPopulated: Bool {
        do {
            let realm = try Realm()
            let decisionObjects = realm.objects(Decisions.self)
            return decisionObjects.count >= 3
        } catch {
            print("Error, couldn't read decision objects from Realm: \(error.localizedDescription)")
            return false
        }
    }
    
    static func bootstrapDecisions() {
        do {
            let realm = try Realm()
            let defaultDecisions = Decisions()
            let softDecisions = Decisions()
            let splitDecisions = Decisions()
            
            defaultDecisions.bootstrap(defaults: defaultDefaultDecisions, handType: .normal)
            softDecisions.bootstrap(defaults: defaultSoftDecisions, handType: .soft)
            splitDecisions.bootstrap(defaults: defaultSplitDecisions, handType: .split)
            try realm.write {
                realm.delete(realm.objects(Decision.self))
                realm.delete(realm.objects(Decisions.self))
                realm.delete(realm.objects(Decision.self))
                realm.delete(realm.objects(Decisions.self))
                realm.add(defaultDecisions)
                realm.add(softDecisions)
                realm.add(splitDecisions)
            }
        } catch {
            print("Error, couldn't read decision objects from Realm: \(error.localizedDescription)")
        }
    }
    
    static func reset(defaults: [[Decision]], handType: HandType) {
        let indexOffset = handType == .normal ? 5 : 2
//        print("Reset, handType: \(handType.rawValue)")
        do {
            let realm = try Realm()
            let realmDecisions = realm.objects(Decisions.self).filter(NSPredicate(
                format: "isSplit == \(handType == .split ? "YES" : "NO") AND isSoft == \(handType == .soft ? "YES" : "NO")"))
            try realm.write() {
                realmDecisions.forEach() { decisions in
                    decisions.decisions.forEach() { decisionsList in
                        decisionsList.decisions.forEach() { decision in
//                            if decision.handValue - indexOffset == 00 && decision.dealerCardValue.index == 0 {
//                                print("Corner Realm value = \(decision.action.rawValue), default value = \(defaults[decision.handValue - indexOffset][decision.dealerCardValue.index].action.rawValue)")
//                            }
                            if decision.action != defaults[decision.handValue - indexOffset][decision.dealerCardValue.index].action {
                                print("\(decision.handValue - indexOffset), \(decision.dealerCardValue.index)")
                                print("Changing action from \(decision.action.rawValue) to \(defaults[decision.handValue - indexOffset][decision.dealerCardValue.index].action.rawValue)")
                                decision.action = defaults[decision.handValue - indexOffset][decision.dealerCardValue.index].action
                            }
                        }
                    }
                }
            }
        } catch {
            print("Can't reset decision data: \(error.localizedDescription)")
        }
    }
    
    static func reset() {
        reset(defaults: defaultDefaultDecisions, handType: .normal)
        reset(defaults: defaultSoftDecisions, handType: .soft)
        reset(defaults: defaultSplitDecisions, handType: .split)
    }
}
