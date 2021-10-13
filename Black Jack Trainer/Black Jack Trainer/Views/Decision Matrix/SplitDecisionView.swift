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
    
    var myHandValue: Int? = nil
    var dealerCardValue: CardValue? = nil
    var editable = false
    
    var body: some View {
        if let decisions = decisions.first {
            VStack {
                HStack(spacing: 0) {
                    VStack(spacing: 0) {
                        HStack(spacing: 0) {
                            CardValueLabel()
                            ForEach(CardValue.allCases) { valueLabel in
                                CardValueLabel(cardValue: valueLabel)
                            }
                        }
                        VStack(spacing: 0) {
                            ForEach(CardValue.allCases.reversed()) { cardValue in
                                HStack(spacing: 0) {
                                    CardValueLabel(cardValue: cardValue)
                                    ForEach(CardValue.allCases) { thisDealerCardValue in
                                        let decision = decisions.decisions[cardValue.index].decisions[thisDealerCardValue.index]
                                        if editable {
                                            EditDecisionCell(decision: decision)
                                        } else {
                                            if let myHandValue = myHandValue, let dealerCardValue = dealerCardValue {
                                                DecisionCell(
                                                    decision: decision,
                                                    myHandValue: myHandValue,
                                                    dealerCardValue: dealerCardValue)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                if editable {
                    ResetButton(label: "Reset Split Matrix", resetType: .split)
                        .padding(.top, 20)
                }
                Spacer()
            }
            .padding([.trailing, .top])
            .navigationBarTitle(editable ? "Tap Cells to Edit" : "Split Hand", displayMode: .inline)
        }
    }
}

struct SplitDecisionView_Previews: PreviewProvider {
    static var previews: some View {
        if !Decisions.areDecisionsPopulated {
            Decisions.bootstrapDecisions()
        }
        return NavigationView {
            SplitDecisionView(myHandValue: 6, dealerCardValue: .nine)
        }
    }
}
