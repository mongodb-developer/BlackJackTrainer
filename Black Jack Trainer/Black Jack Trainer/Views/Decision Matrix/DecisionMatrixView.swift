//
//  DecisionMatrixView.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 13/10/2021.
//

import SwiftUI

struct DecisionMatrixView: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass: UserInterfaceSizeClass?
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    @ObservedObject var card1: Card
    @ObservedObject var card2: Card
    @ObservedObject var dealerCard: Card
    
    var body: some View {
        VStack {
            if card1.face.value == card2.face.value {
                SplitDecisionView(myHandValue: card1.valueAsInt, dealerCardValue: dealerCard.value)
            } else if card1.isSoft || card2.isSoft {
                SoftDecisionView(
                    myHandValue: card1.isSoft ? card2.valueAsInt : card1.valueAsInt,
                    dealerCardValue: dealerCard.value)
            } else {
                DefaultDecisionView(
                    myHandValue: card1.valueAsInt + card2.valueAsInt,
                    dealerCardValue: dealerCard.value)
            }
        }
    }
}

struct DecisionMatrixView_Previews: PreviewProvider {
    static var previews: some View {
        if !Decisions.areDecisionsPopulated {
            Decisions.bootstrapDecisions()
        }
        return _PreviewOrientation (
            _PreviewColorScheme(
                NavigationView {
                    DecisionMatrixView(card1: Card(), card2: Card(), dealerCard: Card())
                }
                    .navigationViewStyle(StackNavigationViewStyle())
            )
        )
    }
}
