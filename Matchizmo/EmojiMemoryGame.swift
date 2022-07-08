//
//  EmojiMemoryGame.swift
//  Matchizmo
//
//  Created by Rams Tanis on 7/4/22.
//

import SwiftUI
    
class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojies = ["✈️", "🚊", "🛳", "🚗 ", "🏍", "🚤", "🛵", "🚁", "🚙", "🚢", "🛹", "🚜"]
    
    @Published private var model = EmojiMemoryGame.createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfParisOfCards: 8) { index in
            emojies[index]
        }
    }
    
    var cards: [MemoryGame<String>.Card] {
        return model.cards
    }
    
    // MARK: User Intents
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
