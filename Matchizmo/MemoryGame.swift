//
//  MemoryGame.swift
//  Matchizmo
//
//  Created by Rams Tanis on 7/4/22.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: [Card]
    
    func choose(_ card: Card) {}
    
    struct Card {
        var isfaceUp = false
        var isMatched = false
        var content: CardContent
    }
    
    init(numberOfParisOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = [Card]()
        
        for pairIndex in 0..<numberOfParisOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
}
