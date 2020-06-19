//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by José Antônio Maria de Rezende Silva on 6/19/20.
//  Copyright © 2020 José Antônio Maria de Rezende Silva. All rights reserved.
//

import Foundation

class EmojiMemoryGame {
    private var model: MemoryGame<string> = MemoryGame<String>(cards: Array<MemoryGame<String>.Card>)
    
    //MARK: - Access to the model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
