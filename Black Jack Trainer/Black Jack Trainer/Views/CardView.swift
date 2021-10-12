//
//  CardView.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 11/10/2021.
//

import SwiftUI

struct CardView: View {
    @ObservedObject var card: Card
    
    var body: some View {
        HStack(spacing: 0) {
            Text(card.face.string)
                .font(.largeTitle)
                .frame(width: 40)
                .padding(.trailing, 8)
            Image(systemName: card.suit.string)
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)
        }
        .foregroundColor(card.suit.color)
    }
}

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        VStack {
//            CardView(card: Card(suit: .heart, face: .ace))
//            CardView(card: Card(suit: .club, face: .queen))
//            CardView(card: Card(suit: .diamond, face: .two))
//            CardView(card: Card(suit: .spade, face: .ten))
//        }
//    }
//}
