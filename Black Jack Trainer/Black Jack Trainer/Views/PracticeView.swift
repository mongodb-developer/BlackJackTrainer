//
//  PracticeView.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 11/10/2021.
//

import SwiftUI

struct PracticeView: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass: UserInterfaceSizeClass?
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    @StateObject var card1 = Card()
    @StateObject var card2 = Card()
    @StateObject var dealerCard = Card()
    @State private var showingSettings = false
    
    var body: some View {
        Group {
            if horizontalSizeClass == .compact && verticalSizeClass == .regular {
                // iPhone Portrait
                VStack {
                    DecisionMatrixView(card1: card1, card2: card2, dealerCard: dealerCard)
                    Spacer()
                    ActionAreaView(card1: card1, card2: card2, dealerCard: dealerCard)
                        .padding()
                }
            }
            if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                // iPhone Landscape
                HStack {
                    DecisionMatrixView(card1: card1, card2: card2, dealerCard: dealerCard)
                    Spacer()
                    ActionAreaView(card1: card1, card2: card2, dealerCard: dealerCard)
                        .padding()
                }
            }
            if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                // iPad
                VStack {
                    DecisionMatrixView(card1: card1, card2: card2, dealerCard: dealerCard)
                    Spacer()
                    HStack {
                        ActionAreaView(card1: card1, card2: card2, dealerCard: dealerCard)
                            .padding()
                    }
                }
            }
            NavigationLink(destination: SettingsView(), isActive: $showingSettings) {
                EmptyView()
            }
        }
        .navigationBarItems(trailing: Button(action: { showingSettings.toggle() }) {
            Image(systemName: "gear")
                .foregroundColor(.primary)
        })
    }
}

struct PracticeView_Previews: PreviewProvider {
    static var previews: some View {
        if !Decisions.areDecisionsPopulated {
            Decisions.bootstrapDecisions()
        }
        return Group {
            NavigationView {
                PracticeView()
            }
            NavigationView {
                PracticeView()
            }
            .preferredColorScheme(.dark)
            NavigationView {
                PracticeView()
            }
            .previewInterfaceOrientation(.landscapeRight)
            NavigationView {
                PracticeView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .previewDevice(PreviewDevice(rawValue: "iPad (9th generation)"))
            .previewInterfaceOrientation(.landscapeRight)
        }
    }
}
