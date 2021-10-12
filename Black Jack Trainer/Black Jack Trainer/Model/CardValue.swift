//
//  CardValue.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 08/10/2021.
//

import Foundation

enum CardValue: Int, CaseIterable, Identifiable {
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
//    case joker = 12
    
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
    
    static func valueToIndex(_ value: CardValue) -> Int { value.rawValue - 2 }
    static func indexToValue(_ index: Int) -> CardValue { CardValue(rawValue: index + 2) ?? .ace }
}
