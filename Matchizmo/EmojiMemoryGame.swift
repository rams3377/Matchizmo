//
//  EmojiMemoryGame.swift
//  Matchizmo
//
//  Created by Rams Tanis on 7/4/22.
//

import SwiftUI
    
class EmojiMemoryGame {
    static let emojies = ["✈️", "🚊", "🛳", "🚗 ", "🏍", "🚤", "🛵", "🚁", "🚙", "🚢", "🛹", "🚜"]
    
    private var model = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfParisOfCards: 4) { index in
            EmojiMemoryGame.emojies[index]
        }
    }
    
    var cards: [MemoryGame<String>.Card] {
        return model.cards
    }
}
