//
//  Concentration.swift
//  Concentration
//
//  Created by Shridhar Sukhani on 24/01/18.
//  Copyright © 2018 Shridhar Sukhani. All rights reserved.
//

import Foundation

class Concentration {
    
    var cards = [Card]()
    
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    var numberOfPairsOfMatchedCards = 0
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                // check if cards match
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                    numberOfPairsOfMatchedCards += 1
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = nil
            } else {
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card] //Card is a struct. Structs are passed around by value
        }
        
        var tempArray = [Card]()
        while cards.count != 0 {
            let indexToRemove = Int(arc4random_uniform(UInt32(cards.count)))
            tempArray.append(cards[indexToRemove])
            cards.remove(at: indexToRemove)
        }
    }
    
}
