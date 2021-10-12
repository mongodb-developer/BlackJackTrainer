//
//  SplitDecisionView.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 11/10/2021.
//

import SwiftUI
import RealmSwift

struct SplitDecisionView: View {
    @ObservedResults(Decisions.self, filter: NSPredicate(format: "isSplit == YES")) var decisions
    
    let myHandValue: Int
    let dealerCardValue: CardValue
    
    let elements = 11.0
    let width = 35.0
    
    var body: some View {
        if let decisions = decisions.first {
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
                                HStack(spacing: 0) {
                                    CardValueLabel(cardValue: cardValue, width: width)
                                    ForEach(CardValue.allCases) { thisDealerCardValue in
                                        let decision = decisions.decisions[cardValue.index].decisions[thisDealerCardValue.index]
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
}

struct SplitDecisionView_Previews: PreviewProvider {
    static var previews: some View {
        SplitDecisionView(myHandValue: 6, dealerCardValue: .nine)
            .padding(0)
    }
}
