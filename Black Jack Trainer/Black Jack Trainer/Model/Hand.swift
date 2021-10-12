//
//  Hand.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 08/10/2021.
//

import Foundation

class Hand {
    var value = 0
    var isSoft = false
    var isPair = false
    
    init(value: Int, isSoft: Bool = false, isPair: Bool = false) {
        self.value = value
        self.isSoft = isSoft
        self.isPair = isPair
    }
}
