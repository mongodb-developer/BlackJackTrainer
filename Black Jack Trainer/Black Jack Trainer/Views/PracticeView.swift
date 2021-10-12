//
//  PracticeView.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 11/10/2021.
//

import SwiftUI

struct PracticeView: View {
    @StateObject var card1 = Card()
    @StateObject var card2 = Card()
    @StateObject var dealerCard = Card()
    
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
            Spacer()
            ActionAreaView(card1: card1, card2: card2, dealerCard: dealerCard)
                .padding()
        }
    }
}

struct PracticeView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeView()
    }
}
