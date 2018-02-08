//
//  Card.swift
//  Concentration
//
//  Created by Shridhar Sukhani on 24/01/18.
//  Copyright © 2018 Shridhar Sukhani. All rights reserved.
//

import Foundation

struct Card {
    
    private static var identifierFactory: Int = 1
    
    private var isFaceUp = false
    private var isMatched = false
    var identifier: Int
    
}
