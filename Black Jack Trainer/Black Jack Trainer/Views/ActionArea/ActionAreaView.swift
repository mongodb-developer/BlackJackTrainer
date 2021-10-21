//
//  ActionAreaView.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 11/10/2021.
//

import SwiftUI
import RealmSwift

struct ActionAreaView: View {
    @ObservedResults(Settings.self) var settings
    
    @ObservedObject var card1: Card
    @ObservedObject var card2: Card
    @ObservedObject var dealerCard: Card
    
    var body: some View {
        HStack {
            Spacer()
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
                Button(action: deal) {
                    Text("Deal")
                }
                    .buttonStyle(.borderedProminent)
                    .frame(minWidth: 60)
            }
        }
        .onAppear(perform: deal)
    }
    
    private func deal() {
        card1.shuffle()
        card2 .shuffle()
        dealerCard.shuffle()
        if let mySettings = settings.first {
            switch mySettings.typesOfHand {
            case .soft:
                card1.face = .ace
            case .split:
                card1.face = card2.face
            case .other:
                [card1, card2].forEach() { card in
                    if card.face == .ace {
                        card.face = Face(rawValue: Int.random(in: Face.two.rawValue...Face.king.rawValue)) ?? .seven
                    }
                }
                if card1.face.value == card2.face.value {
                    if card1.face.value == .ten {
                        card1.face = Face(rawValue: Int.random(in: Face.two.rawValue...Face.nine.rawValue)) ?? .seven
                    } else {
                        if card2.face == .nine {
                            card2.face = .two
                        } else {
                            card2.face = Face(rawValue: card2.face.value.rawValue + 1) ?? .seven
                        }
                    }
                }
                
            default:
                return
            }
        }
    }
}

struct ActionAreaView_Previews: PreviewProvider {
    static var previews: some View {
        _PreviewColorScheme (
            ActionAreaView(card1: Card(), card2: Card(), dealerCard: Card())
        )
    }
}
