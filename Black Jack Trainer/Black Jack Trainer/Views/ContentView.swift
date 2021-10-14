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
                .onAppear(perform: bootstrap)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    private func bootstrap() {
        if !Decisions.areDecisionsPopulated {
            Decisions.bootstrapDecisions()
        }
        Settings.initSettings()
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
