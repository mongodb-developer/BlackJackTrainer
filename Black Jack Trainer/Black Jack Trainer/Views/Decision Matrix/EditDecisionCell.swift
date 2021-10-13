//
//  EditDecisionCell.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 12/10/2021.
//

import SwiftUI
import RealmSwift

struct EditDecisionCell: View {
    @ObservedRealmObject var decision: Decision
    
    var body: some View {
        Button(action: advance) {
            Text(decision.actionString)
                .font(.caption)
                .frame(width: cellWidth, height: cellHeight, alignment: .center)
                .background(decision.actionColor)
                .foregroundColor(.primary)
        }
    }
    
    private func advance() {
        switch decision.action {
        case .stand:
            $decision.action.wrappedValue = .hit
        case .hit:
            $decision.action.wrappedValue = .double
        case .double:
            $decision.action.wrappedValue = .split
        case .split:
            $decision.action.wrappedValue = .stand
        }
    }
}

struct EditDecisionCell_Previews: PreviewProvider {
    static var previews: some View {
        let decisions: [Decision] = [
            Decision(handValue: 6, dealerCardValue: .nine, action: .split),
            Decision(handValue: 6, dealerCardValue: .nine, action: .stand),
            Decision(handValue: 6, dealerCardValue: .nine, action: .double),
            Decision(handValue: 6, dealerCardValue: .nine, action: .hit)
        ]
        HStack (spacing: 0) {
            ForEach(decisions) { decision in
                EditDecisionCell(decision: decision)
            }
        }
    }
}
