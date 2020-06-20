//
//  ContentView.swift
//  Memorize
//
//  Created by José Antônio Maria de Rezende Silva on 6/6/20.
//  Copyright © 2020 José Antônio Maria de Rezende Silva. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            }
        }
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}


struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack{
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                Text(card.content)
            }
            else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
