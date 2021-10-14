//
//  DecisionCell.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 11/10/2021.
//

import SwiftUI

struct DecisionCell: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass: UserInterfaceSizeClass?
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    let decision: Decision
    let myHandValue: Int
    let dealerCardValue: CardValue
    
    var body: some View {
        Text(decision.actionString)
            .font(.caption)
            .foregroundColor((myHandValue == decision.handValue || dealerCardValue == decision.dealerCardValue) ? .black  : .gray)
            .fontWeight((myHandValue == decision.handValue && dealerCardValue == decision.dealerCardValue) ? .bold : .light)
            .frame(width: cellWidth + (horizontalSizeClass == .regular ? extraCellWidth : 0),
                   height: cellHeight + (verticalSizeClass == .regular ? extraCellHeight : 0), alignment: .center)
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
        return _PreviewColorScheme(
            VStack(spacing: 0) {
                ForEach(decisions) { decision in
                    HStack (spacing: 0) {
                        DecisionCell(decision: decision, myHandValue: 8, dealerCardValue: .three)
                        DecisionCell(decision: decision, myHandValue: 6, dealerCardValue: .three)
                        DecisionCell(decision: decision, myHandValue: 8, dealerCardValue: .nine)
                        DecisionCell(decision: decision, myHandValue: 6, dealerCardValue: .nine)
                    }
                }
            }
                .previewLayout(.sizeThatFits)
                .padding()
        )
    }
}
