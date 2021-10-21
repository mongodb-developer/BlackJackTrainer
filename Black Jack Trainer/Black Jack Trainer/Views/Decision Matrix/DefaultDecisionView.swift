//
//  DefaultDecisionView.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 12/10/2021.
//

import SwiftUI
import RealmSwift

struct DefaultDecisionView: View {
    @ObservedResults(Decisions.self, filter: NSPredicate(format: "isSoft == NO AND isSplit == NO")) var decisions
    
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
                                CardValueLabel(valueLabel)
                            }
                        }
                        VStack(spacing: 0) {
                            ForEach((5...21).reversed(), id: \.self) { handValue in
                                HStack(spacing: 0) {
                                    HandValueLabel(handValue: handValue)
                                    ForEach(CardValue.allCases) { thisDealerCardValue in
                                        let decision = decisions.decisions[handValue - 5].decisions[thisDealerCardValue.index]
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
                    ResetButton(label: "Reset Standard Matrix", resetType: .regular)
                        .padding(.top, 20)
                }
                Spacer()
            }
            .padding([.trailing, .top])
            .navigationBarTitle(editable ? "Tap Cells to Edit" : "Regular Hand", displayMode: .inline)
        }
    }
}

struct DefaultDecisionView_Previews: PreviewProvider {
    static var previews: some View {
        if !Decisions.areDecisionsPopulated {
            Decisions.bootstrapDecisions()
        }
        return _PreviewOrientation(
            _PreviewColorScheme(
                Group {
                    NavigationView {
                        DefaultDecisionView(myHandValue: 6, dealerCardValue: .nine)
                    }
                    NavigationView {
                        DefaultDecisionView(myHandValue: 6, dealerCardValue: .nine, editable: true)
                    }
                }
                    .navigationViewStyle(StackNavigationViewStyle())
            )
        )
    }
}
