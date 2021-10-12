//
//  Card.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 11/10/2021.
//

import Foundation
import SwiftUI

enum Suit: Int, CaseIterable {
    case heart = 1
    case diamond = 2
    case club = 3
    case spade = 4
    
//    static var random: Suit { Suit.allCases.randomElement() }
    
//    static var random: Suit {
//        let randomInt = Int.random(in: 1..<5)
//        let rand = Suit.random
//        return Suit(rawValue: randomInt) ?? .spade
//    }
    
    init(_ suit: Suit) {
        self = suit
    }
    
    var color: Color {
        switch self {
        case .heart, .diamond:
            return .red
        case .spade, .club:
            return .black
        }
    }
    
    var string: String {
        switch self {
        case .heart:
            return "suit.heart.fill"
        case .diamond:
            return "suit.diamond.fill"
        case .club:
            return "suit.club.fill"
        case .spade:
            return "suit.spade.fill"
        }
    }
}

enum Face: Int, CaseIterable {
    case ace = 1
    case two = 2
    case three = 3
    case four = 4
    case five = 5
    case six = 6
    case seven = 7
    case eight = 8
    case nine = 9
    case ten = 10
    case jack = 11
    case queen = 12
    case king = 13
    
//    static var random: Face {
//        let randomInt = Int.random(in: 1..<14)
//        return Face(rawValue: randomInt) ?? .ace
//    }
    
    init(_ face: Face) {
        self = face
    }
    
    var string: String {
        switch self {
        case .ace:
            return "A"
        case .jack:
            return "J"
        case .queen:
            return "Q"
        case .king:
            return "K"
        default:
            return "\(self.rawValue)"
        }
    }
    
    var value: CardValue {
        switch self {
        case .ace:
            return .ace
        case .jack, .queen, .king:
            return .ten
        default:
            return CardValue(rawValue: rawValue) ?? .ace
        }
    }
}

class Card: ObservableObject {
    @Published var suit: Suit
    @Published var face: Face
    
    var value: CardValue { face.value }
    var valueAsInt: Int {
        switch face {
        case .ace:
            return 11
        case .jack, .queen, .king:
            return 10
        default:
            return face.rawValue
        }
    }
    
    var isSoft: Bool { face == .ace }
    
    init() {
        suit = Suit.allCases.randomElement() ?? .spade
        face = Face.allCases.randomElement() ?? .ace
    }
    
    init(_ card: Card) {
        suit = card.suit
        face = card.face
    }
    
    convenience init (suit: Suit, face: Face) {
        self.init()
        self.suit = suit
        self.face = face
    }
    
    func shuffle() {
        suit = Suit.allCases.randomElement() ?? .spade
        face = Face.allCases.randomElement() ?? .ace
    }
}
