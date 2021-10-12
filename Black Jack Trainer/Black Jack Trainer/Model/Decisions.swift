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
