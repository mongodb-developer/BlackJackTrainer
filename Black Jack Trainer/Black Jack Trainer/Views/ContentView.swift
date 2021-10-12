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
    }
    
    private func bootstrapDecisions() {
        if !Decisions.areDecisionsPopulated {
            Decisions.bootstrapDecisions()
        }
//        print("Checking to see if existing decisions are in Realm")
//        do {
//            let realm = try Realm()
//            let decisionObjects = realm.objects(Decisions.self)
//            if decisionObjects.count == 0 {
//                print("Bootstrapping decision objects")
//                let defaultDecisions = Decisions()
//                let softDecisions = Decisions()
//                let splitDecisions = Decisions()
//
//                defaultDecisions.bootstrap(defaults: defaultDefaultDecisions, handType: .normal)
//                softDecisions.bootstrap(defaults: defaultSoftDecisions, handType: .soft)
//                splitDecisions.bootstrap(defaults: defaultSplitDecisions, handType: .split)
//                try realm.write {
//                    realm.add(defaultDecisions)
//                    realm.add(softDecisions)
//                    realm.add(splitDecisions)
//                }
//            }
//        } catch {
//            print("Error, couldn't read decision objects from Realm: \(error.localizedDescription)")
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
