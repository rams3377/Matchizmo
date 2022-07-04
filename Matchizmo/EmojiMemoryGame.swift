//
//  EmojiMemoryGame.swift
//  Matchizmo
//
//  Created by Rams Tanis on 7/4/22.
//

import SwiftUI
    
class EmojiMemoryGame {
    private var model = MemoryGame<String>(numberOfParisOfCards: 4) { index in
         "A"
    }
    
    var cards: [MemoryGame<String>.Card] {
        return model.cards
    }
}
