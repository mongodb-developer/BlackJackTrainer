//
//  DefaultDecisionView.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 12/10/2021.
//

import SwiftUI

struct DefaultDecisionView: View {
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
                        ForEach((5...21).reversed(), id: \.self) { handValue in
                            HStack(spacing: 0) {
                                HandValueLabel(handValue: handValue, width: width)
                                ForEach(CardValue.allCases) { thisDealerCardValue in
                                    let decision = DefaultDecisions.matrix[handValue - 5].decisions[thisDealerCardValue.index]
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
        .padding(.trailing)
    }
}

struct DefaultDecisionView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultDecisionView(myHandValue: 6, dealerCardValue: .nine)
            .padding(0)
    }
}
