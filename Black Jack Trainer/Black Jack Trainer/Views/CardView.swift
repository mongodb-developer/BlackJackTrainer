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
        .padding(8)
        .background(.white)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            _PreviewNoDevice(
                _PreviewColorScheme(
                    VStack {
                        ForEach(Suit.allCases, id: \.rawValue) { suit in
                            CardView(card: Card(suit: suit))
                        }
                    }
                    
                )
            )
        }
    }
}
