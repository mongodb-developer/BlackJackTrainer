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
        print("Checking to see if existing decisions are in Realm")
        do {
            let realm = try Realm()
            print("Bootstrapping decision objects")
            let defaultDecisions = Decisions()
            let softDecisions = Decisions()
            let splitDecisions = Decisions()
            
            try realm.write {
                realm.delete(realm.objects(Decision.self))
                realm.delete(realm.objects(Decisions.self))
            }
            defaultDecisions.bootstrap(defaults: defaultDefaultDecisions, handType: .normal)
            softDecisions.bootstrap(defaults: defaultSoftDecisions, handType: .soft)
            splitDecisions.bootstrap(defaults: defaultSplitDecisions, handType: .split)
            try realm.write {
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
}
