//
//  SoftDecisionView.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 11/10/2021.
//

import SwiftUI
import RealmSwift

struct SoftDecisionView: View {
    @ObservedResults(Decisions.self, filter: NSPredicate(format: "isSoft == YES")) var decisions
    
    var myHandValue: Int? = nil
    var dealerCardValue: CardValue? = nil
    var editable = false
    
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
                                if cardValue != .ace {
                                    HStack(spacing: 0) {
                                        CardValueLabel(cardValue: cardValue, width: width)
                                        ForEach(CardValue.allCases) { thisDealerCardValue in
                                            let decision = decisions.decisions[cardValue.index].decisions[thisDealerCardValue.index]
                                            if editable {
                                                EditDecisionCell(decision: decision, width: width)
                                            } else {
                                                if let myHandValue = myHandValue, let dealerCardValue = dealerCardValue {
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
                }
                Spacer()
            }
            .padding([.trailing, .top])
            .navigationBarTitle(editable ? "Tap Cells to Edit" : "Soft Hand", displayMode: .inline)
        }
    }
}

struct SoftDecisionView_Previews: PreviewProvider {
    static var previews: some View {
        SoftDecisionView(myHandValue: 6, dealerCardValue: .nine)
            .padding(0)
    }
}
