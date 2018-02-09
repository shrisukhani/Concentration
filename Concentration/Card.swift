//
//  Card.swift
//  Concentration
//
//  Created by Shridhar Sukhani on 24/01/18.
//  Copyright © 2018 Shridhar Sukhani. All rights reserved.
//

import Foundation

struct Card {
    
    private static var identifierFactory: Int = 0
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static func getUniqueIdentifier() -> Int {
        Card.identifierFactory += 1
        return Card.identifierFactory
    }
    
    init() {
        identifier = Card.getUniqueIdentifier()
    }
}
