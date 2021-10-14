//
//  Settings.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 14/10/2021.
//

import Foundation
import RealmSwift

enum TypesOfHand: Int, PersistableEnum {
    case all = 0
    case split = 1
    case soft = 2
    case other = 3
}

class Settings: Object {
    @Persisted var typesOfHand: TypesOfHand = .all
}

extension Settings: Identifiable {
    var id: Int {
        typesOfHand.rawValue
    }
}

extension Settings {
    static var areSettingsPopulated: Bool {
        do {
            let realm = try Realm()
            let settingsObjects = realm.objects(Settings.self)
            return settingsObjects.count > 0
        } catch {
            print("Error, couldn't read Settings objects from Realm: \(error.localizedDescription)")
            return false
        }
    }
    
    static func initSettings() {
        if !areSettingsPopulated {
            do {
                let realm = try Realm()
                let settings = Settings()
                try realm.write() {
                    realm.add(settings)
                }
            } catch {
                print("Error, couldn't init Settings object in Realm: \(error.localizedDescription)")
            }
        }
    }
}
