//
//  TypeOfHandsSelector.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 14/10/2021.
//

import SwiftUI
import RealmSwift

struct TypeOfHandsSelector: View {
    @ObservedRealmObject var settings: Settings
    var body: some View {
        Picker("What type of hands should be dealt?", selection: $settings.typesOfHand) {
            Text("Random").tag(TypesOfHand.all)
            Text("Split").tag(TypesOfHand.split)
            Text("Soft").tag(TypesOfHand.soft)
            Text("Other").tag(TypesOfHand.other)
        }
        .pickerStyle(.segmented)
    }
}

struct TypeOfHandsSelector_Previews: PreviewProvider {
    static var previews: some View {
        _PreviewOrientation (
            Form {
                TypeOfHandsSelector(settings: Settings())
            }
        )
    }
}
