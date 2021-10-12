//
//  SplitDecisions.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 08/10/2021.
//

import Foundation

class SplitDecisionRow {
    var card: CardValue = .ace
    var decisions = [Decision]()
    
    convenience init(_ cardValue: CardValue, decisions: [Decision]) {
        self.init()
        card = cardValue
        self.decisions = decisions
    }
}

class SplitDecisions {
    static func decision(myCard: Card, dealerCard: Card) -> Action {
        let myCardValueIndex = myCard.value.index
        let dealerCardValueIndex = dealerCard.value.index
        
        return matrix[myCardValueIndex].decisions[dealerCardValueIndex].action
    }
    
    static let matrix: [SplitDecisionRow] = [
        SplitDecisionRow(.two, decisions: [
             Decision(handValue: 2, dealerCardValue: .two, action: .split),
             Decision(handValue: 2, dealerCardValue: .three, action: .split),
             Decision(handValue: 2, dealerCardValue: .four, action: .split),
             Decision(handValue: 2, dealerCardValue: .five, action: .split),
             Decision(handValue: 2, dealerCardValue: .six, action: .split),
             Decision(handValue: 2, dealerCardValue: .seven, action: .split),
             Decision(handValue: 2, dealerCardValue: .eight, action: .hit),
             Decision(handValue: 2, dealerCardValue: .nine, action: .hit),
             Decision(handValue: 2, dealerCardValue: .ten, action: .hit),
             Decision(handValue: 2, dealerCardValue: .ace, action: .hit)
        ]),
        SplitDecisionRow(.three, decisions: [
             Decision(handValue: 3, dealerCardValue: .two, action: .split),
             Decision(handValue: 3, dealerCardValue: .three, action: .split),
             Decision(handValue: 3, dealerCardValue: .four, action: .split),
             Decision(handValue: 3, dealerCardValue: .five, action: .split),
             Decision(handValue: 3, dealerCardValue: .six, action: .split),
             Decision(handValue: 3, dealerCardValue: .seven, action: .split),
             Decision(handValue: 3, dealerCardValue: .eight, action: .hit),
             Decision(handValue: 3, dealerCardValue: .nine, action: .hit),
             Decision(handValue: 3, dealerCardValue: .ten, action: .hit),
             Decision(handValue: 3, dealerCardValue: .ace, action: .hit)
        ]),
        SplitDecisionRow(.four, decisions: [
             Decision(handValue: 4, dealerCardValue: .two, action: .hit),
             Decision(handValue: 4, dealerCardValue: .three, action: .hit),
             Decision(handValue: 4, dealerCardValue: .four, action: .hit),
             Decision(handValue: 4, dealerCardValue: .five, action: .split),
             Decision(handValue: 4, dealerCardValue: .six, action: .split),
             Decision(handValue: 4, dealerCardValue: .seven, action: .hit),
             Decision(handValue: 4, dealerCardValue: .eight, action: .hit),
             Decision(handValue: 4, dealerCardValue: .nine, action: .hit),
             Decision(handValue: 4, dealerCardValue: .ten, action: .hit),
             Decision(handValue: 4, dealerCardValue: .ace, action: .hit)
        ]),
        SplitDecisionRow(.five, decisions: [
             Decision(handValue: 5, dealerCardValue: .two, action: .double),
             Decision(handValue: 5, dealerCardValue: .three, action: .double),
             Decision(handValue: 5, dealerCardValue: .four, action: .double),
             Decision(handValue: 5, dealerCardValue: .five, action: .double),
             Decision(handValue: 5, dealerCardValue: .six, action: .double),
             Decision(handValue: 5, dealerCardValue: .seven, action: .double),
             Decision(handValue: 5, dealerCardValue: .eight, action: .double),
             Decision(handValue: 5, dealerCardValue: .nine, action: .double),
             Decision(handValue: 5, dealerCardValue: .ten, action: .hit),
             Decision(handValue: 5, dealerCardValue: .ace, action: .hit)
        ]),
        SplitDecisionRow(.six, decisions: [
            Decision(handValue: 6, dealerCardValue: .two, action: .split),
            Decision(handValue: 6, dealerCardValue: .three, action: .split),
            Decision(handValue: 6, dealerCardValue: .four, action: .split),
            Decision(handValue: 6, dealerCardValue: .five, action: .split),
            Decision(handValue: 6, dealerCardValue: .six, action: .split),
            Decision(handValue: 6, dealerCardValue: .seven, action: .hit),
            Decision(handValue: 6, dealerCardValue: .eight, action: .hit),
            Decision(handValue: 6, dealerCardValue: .nine, action: .hit),
            Decision(handValue: 6, dealerCardValue: .ten, action: .hit),
            Decision(handValue: 6, dealerCardValue: .ace, action: .hit)
       ]),
        SplitDecisionRow(.seven, decisions: [
             Decision(handValue: 7, dealerCardValue: .two, action: .split),
             Decision(handValue: 7, dealerCardValue: .three, action: .split),
             Decision(handValue: 7, dealerCardValue: .four, action: .split),
             Decision(handValue: 7, dealerCardValue: .five, action: .split),
             Decision(handValue: 7, dealerCardValue: .six, action: .split),
             Decision(handValue: 7, dealerCardValue: .seven, action: .split),
             Decision(handValue: 7, dealerCardValue: .eight, action: .hit),
             Decision(handValue: 7, dealerCardValue: .nine, action: .hit),
             Decision(handValue: 7, dealerCardValue: .ten, action: .hit),
             Decision(handValue: 7, dealerCardValue: .ace, action: .hit)
        ]),
        SplitDecisionRow(.eight, decisions: [
             Decision(handValue: 8, dealerCardValue: .two, action: .split),
             Decision(handValue: 8, dealerCardValue: .three, action: .split),
             Decision(handValue: 8, dealerCardValue: .four, action: .split),
             Decision(handValue: 8, dealerCardValue: .five, action: .split),
             Decision(handValue: 8, dealerCardValue: .six, action: .split),
             Decision(handValue: 8, dealerCardValue: .seven, action: .split),
             Decision(handValue: 8, dealerCardValue: .eight, action: .split),
             Decision(handValue: 8, dealerCardValue: .nine, action: .split),
             Decision(handValue: 8, dealerCardValue: .ten, action: .split),
             Decision(handValue: 8, dealerCardValue: .ace, action: .split)
        ]),
        SplitDecisionRow(.nine, decisions: [
             Decision(handValue: 9, dealerCardValue: .two, action: .split),
             Decision(handValue: 9, dealerCardValue: .three, action: .split),
             Decision(handValue: 9, dealerCardValue: .four, action: .split),
             Decision(handValue: 9, dealerCardValue: .five, action: .split),
             Decision(handValue: 9, dealerCardValue: .six, action: .split),
             Decision(handValue: 9, dealerCardValue: .seven, action: .stand),
             Decision(handValue: 9, dealerCardValue: .eight, action: .split),
             Decision(handValue: 9, dealerCardValue: .nine, action: .split),
             Decision(handValue: 9, dealerCardValue: .ten, action: .stand),
             Decision(handValue: 9, dealerCardValue: .ace, action: .stand)
        ]),
        
        SplitDecisionRow(.ten, decisions: [
             Decision(handValue: 10, dealerCardValue: .two, action: .stand),
             Decision(handValue: 10, dealerCardValue: .three, action: .stand),
             Decision(handValue: 10, dealerCardValue: .four, action: .stand),
             Decision(handValue: 10, dealerCardValue: .five, action: .stand),
             Decision(handValue: 10, dealerCardValue: .six, action: .stand),
             Decision(handValue: 10, dealerCardValue: .seven, action: .stand),
             Decision(handValue: 10, dealerCardValue: .eight, action: .stand),
             Decision(handValue: 10, dealerCardValue: .nine, action: .stand),
             Decision(handValue: 10, dealerCardValue: .ten, action: .stand),
             Decision(handValue: 10, dealerCardValue: .ace, action: .stand)
        ]),
        SplitDecisionRow(.ace, decisions: [
            Decision(handValue: 11, dealerCardValue: .two, action: .split),
            Decision(handValue: 11, dealerCardValue: .three, action: .split),
            Decision(handValue: 11, dealerCardValue: .four, action: .split),
            Decision(handValue: 11, dealerCardValue: .five, action: .split),
            Decision(handValue: 11, dealerCardValue: .six, action: .split),
            Decision(handValue: 11, dealerCardValue: .seven, action: .split),
            Decision(handValue: 11, dealerCardValue: .eight, action: .split),
            Decision(handValue: 11, dealerCardValue: .nine, action: .split),
            Decision(handValue: 11, dealerCardValue: .ten, action: .split),
            Decision(handValue: 11, dealerCardValue: .ace, action: .split)
        ])
    ]
}
