//
//  ActionAreaView.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 11/10/2021.
//

import SwiftUI

struct ActionAreaView: View {
    @ObservedObject var card1: Card
    @ObservedObject var card2: Card
    @ObservedObject var dealerCard: Card
    
    var body: some View {
        HStack {
            VStack(alignment: .center) {
                Text("Dealer")
                    .font(.title)
                CardView(card: dealerCard)
                Text("Player")
                    .font(.title)
                    .padding(.top)
                HStack {
                    CardView(card: card1)
                        .padding(.trailing)
                    CardView(card: card2)
                }
            }
            Spacer()
            VStack {
                Button(action: draw) {
                    Text("Draw")
                }
                    .buttonStyle(.borderedProminent)
            }
        }
        .onAppear(perform: draw)
    }
    
    private func draw() {
        card1.shuffle()
        card2 .shuffle()
        dealerCard.shuffle()
    }
}

struct ActionAreaView_Previews: PreviewProvider {
    static var previews: some View {
        ActionAreaView(card1: Card(), card2: Card(), dealerCard: Card())
    }
}
