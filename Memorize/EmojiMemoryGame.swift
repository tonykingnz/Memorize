//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by José Antônio Maria de Rezende Silva on 6/19/20.
//  Copyright © 2020 José Antônio Maria de Rezende Silva. All rights reserved.
//

import Foundation

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    let emojis: Array<String> = ["👻", "🎃"]
    static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame<String>(numberOfPairOfCards: 2) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    //MARK: - Access to the model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
