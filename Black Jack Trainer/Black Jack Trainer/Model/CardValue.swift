//
//  CardValue.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 08/10/2021.
//

import Foundation
import RealmSwift

enum CardValue: Int, CaseIterable, Identifiable, PersistableEnum {
    case two = 2
    case three = 3
    case four = 4
    case five = 5
    case six = 6
    case seven = 7
    case eight = 8
    case nine = 9
    case ten = 10
    case ace = 11
    
    var index: Int { self.rawValue - 2 }
    var id: Int { self.rawValue }
    
    var asString: String {
        switch self {
        case .ace:
            return "A"
        default:
            return "\(self.rawValue)"

        }
    }
}
