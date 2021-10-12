//
//  DecisionCell.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 11/10/2021.
//

import SwiftUI

struct DecisionCell: View {
    let decision: Decision
    let myHandValue: Int
    let dealerCardValue: CardValue
    let width: Double
    
    var body: some View {
        Text(decision.actionString)
            .font(.caption)
            .foregroundColor((myHandValue == decision.handValue || dealerCardValue == decision.dealerCardValue) ? .black  : .gray)
            .fontWeight((myHandValue == decision.handValue && dealerCardValue == decision.dealerCardValue) ? .bold : .light)
            .frame(width: width, height: 20, alignment: .center)
            .background(decision.actionColor)
            .border(.black, width: myHandValue == decision.handValue && dealerCardValue == decision.dealerCardValue ? 2 : 0)
    }
}

struct DecisionCell_Previews: PreviewProvider {
    static var previews: some View {
        let decisions: [Decision] = [
            Decision(handValue: 6, dealerCardValue: .nine, action: .split),
            Decision(handValue: 6, dealerCardValue: .nine, action: .stand),
            Decision(handValue: 6, dealerCardValue: .nine, action: .double),
            Decision(handValue: 6, dealerCardValue: .nine, action: .hit)
        ]
        return VStack(spacing: 0) {
            ForEach(decisions) { decision in
                HStack (spacing: 0) {
                    DecisionCell(decision: decision, myHandValue: 8, dealerCardValue: .three, width: 30)
                    DecisionCell(decision: decision, myHandValue: 6, dealerCardValue: .three, width: 30)
                    DecisionCell(decision: decision, myHandValue: 8, dealerCardValue: .nine, width: 30)
                    DecisionCell(decision: decision, myHandValue: 6, dealerCardValue: .nine, width: 30)
                }
            }
        }
    }
}
