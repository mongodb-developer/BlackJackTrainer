//
//  Decision.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 08/10/2021.
//

import SwiftUI
import RealmSwift

class Decision: Object, ObjectKeyIdentifiable {
    @Persisted var handValue = 0
    @Persisted var dealerCardValue: CardValue = .ace
    @Persisted var action: Action = .stand
    
    var actionString: String {
        switch action {
        case .hit:
            return "HI"
        case .double:
            return "DB"
        case .stand:
            return "ST"
        case .split:
            return "SP"
        }
    }
    
    var actionColor: Color {
        switch action {
        case .hit:
            return .yellow
        case .double:
            return .red
        case .stand:
            return .green
        case .split:
            return .blue
        }
    }
    
    convenience init(handValue: Int, dealerCardValue: CardValue, action: Action) {
        self.init()
        self.handValue = handValue
        self.dealerCardValue = dealerCardValue
        self.action = action
    }
}
