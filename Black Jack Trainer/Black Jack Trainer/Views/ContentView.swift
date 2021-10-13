//
//  ContentView.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 08/10/2021.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    var body: some View {
        NavigationView {
            PracticeView()
                .onAppear(perform: bootstrapDecisions)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    private func bootstrapDecisions() {
        if !Decisions.areDecisionsPopulated {
            Decisions.bootstrapDecisions()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
            ContentView()
                .previewInterfaceOrientation(.landscapeRight)
        }
    }
}
