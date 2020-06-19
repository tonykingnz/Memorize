//
//  MemoryGame.swift
//  Memorize
//
//  Created by José Antônio Maria de Rezende Silva on 6/19/20.
//  Copyright © 2020 José Antônio Maria de Rezende Silva. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    init(numberOfPairOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card.init(isFaceUp: false, cardMatched: false, content: content))
            cards.append(Card.init(isFaceUp: false, cardMatched: false, content: content))
        }
    }
    
    struct Card {
        var isFaceUp: Bool
        var cardMatched: Bool
        var content: CardContent
    }
}
