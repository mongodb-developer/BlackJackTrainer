//
//  SplitDecisionView.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 11/10/2021.
//

import SwiftUI

struct SplitDecisionView: View {
    let myHandValue: Int
    let dealerCardValue: CardValue
    
    let elements = 11.0
    let width = 35.0
    
    var body: some View {
        VStack {
//            GeometryReader { geometry in
                HStack(spacing: 0) {
                    VStack(spacing: 0) {
                        HStack(spacing: 0) {
//                            CardValueLabel(width: geometry.size.width * 1 / elements)
                            CardValueLabel(width: width)
                            ForEach(CardValue.allCases) { valueLabel in
                                CardValueLabel(cardValue: valueLabel, width: width)
//                                CardValueLabel(cardValue: valueLabel, width: geometry.size.width / elements)
                            }
                        }
                        VStack(spacing: 0) {
                            ForEach(CardValue.allCases.reversed()) { cardValue in
                                HStack(spacing: 0) {
//                                    CardValueLabel(cardValue: cardValue, width: geometry.size.width * 1 / elements)
                                    CardValueLabel(cardValue: cardValue, width: width)
                                    ForEach(CardValue.allCases) { thisDealerCardValue in
                                        let decision = defaultSplitDecisions[cardValue.index][thisDealerCardValue.index]
                                        DecisionCell(
                                            decision: decision,
                                            myHandValue: myHandValue,
                                            dealerCardValue: dealerCardValue,
                                            width: width)
//                                            width: geometry.size.width / elements)
                                    }
                                }
                            }
                        }
                    }
                }
//            }
        }
        .padding(.trailing)
    }
}

struct SplitDecisionView_Previews: PreviewProvider {
    static var previews: some View {
        SplitDecisionView(myHandValue: 6, dealerCardValue: .nine)
            .padding(0)
    }
}
