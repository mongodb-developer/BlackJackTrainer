//
//  ResetButton.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 13/10/2021.
//

import SwiftUI

enum ResetType {
    case regular
    case soft
    case split
    case all
}

struct ResetButton: View {
    var label: String
    var resetType: ResetType
    
    @State private var isConfirming = false
    
    var body: some View {
        Button(label) { isConfirming = true }
        .buttonStyle(.bordered)
        .confirmationDialog("\(resetType == .all ? "Are you sure reset all of the decision matrices to their defaults?" : "Are you sure you want to reset this decision matrix to its defaults?")",
                            isPresented: $isConfirming) {
            Button("Confirm Reset", role: .destructive) {
                switch resetType {
                case .regular:
                    Decisions.reset(defaults: defaultDefaultDecisions, handType: .normal)
                case .soft:
                    Decisions.reset(defaults: defaultSoftDecisions, handType: .soft)
                case .split:
                    Decisions.reset(defaults: defaultSplitDecisions, handType: .split)
                case .all:
                    Decisions.reset()
                }
            }
            Button("Cancel", role: .cancel) {}
        }
    }
}

struct ResetButton_Previews: PreviewProvider {
    static var previews: some View {
        ResetButton(label: "Reset All Matrices", resetType: .all)
    }
}
