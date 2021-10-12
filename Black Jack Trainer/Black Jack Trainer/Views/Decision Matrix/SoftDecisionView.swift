//
//  SoftDecisionView.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 11/10/2021.
//

import SwiftUI

struct SoftDecisionView: View {
    let myHandValue: Int
    let dealerCardValue: CardValue
    
    let elements = 11.0
    let width = 35.0
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                VStack(spacing: 0) {
                    HStack(spacing: 0) {
                        CardValueLabel(width: width)
                        ForEach(CardValue.allCases) { valueLabel in
                            CardValueLabel(cardValue: valueLabel, width: width)
                        }
                    }
                    VStack(spacing: 0) {
                        ForEach(CardValue.allCases.reversed()) { cardValue in
                            if cardValue != .ace {
                                HStack(spacing: 0) {
                                    CardValueLabel(cardValue: cardValue, width: width)
                                    ForEach(CardValue.allCases) { thisDealerCardValue in
                                        let decision = SoftDecisions.matrix[cardValue.index][thisDealerCardValue.index]
                                        DecisionCell(
                                            decision: decision,
                                            myHandValue: myHandValue,
                                            dealerCardValue: dealerCardValue,
                                            width: width)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .padding(.trailing)
    }
}

struct SoftDecisionView_Previews: PreviewProvider {
    static var previews: some View {
        SoftDecisionView(myHandValue: 6, dealerCardValue: .nine)
            .padding(0)
    }
}
