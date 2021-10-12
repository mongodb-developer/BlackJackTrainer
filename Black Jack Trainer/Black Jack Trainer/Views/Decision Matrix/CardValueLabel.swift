//
//  CardValueLabel.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 11/10/2021.
//

import SwiftUI

struct CardValueLabel: View {
    var cardValue: CardValue? = nil
    let width: Double
    
    var body: some View {
        Text(cardValue?.asString ?? "")
            .frame(width: width, height: 20, alignment: .center)
    }
}

struct CardValueLabel_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 0) {
            ForEach(CardValue.allCases.reversed()) {
                CardValueLabel(cardValue: $0, width: 30)
            }
        }
    }
}
