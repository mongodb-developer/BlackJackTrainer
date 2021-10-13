//
//  Action.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 08/10/2021.
//

import Foundation
import RealmSwift

enum Action: Int, PersistableEnum {
    case stand = 0
    case hit = 1
    case double = 2
    case split = 3
}
