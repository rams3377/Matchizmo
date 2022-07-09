//
//  EmojiMemoryGameView.swift
//  Matchizmo
//
//  Created by Rams Tanis on 7/3/22.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var game: EmojiMemoryGame
    
    var body: some View {
        AspectVGrid(items: game.cards, aspectRatio: 2/3) { card in
            CardView(card: card)
                .padding(4)
                .onTapGesture {
                    game.choose(card)
                }
        }
        .foregroundColor(.red)
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider  {
    static var previews: some View {
        EmojiMemoryGameView(game: EmojiMemoryGame())
    }
}
