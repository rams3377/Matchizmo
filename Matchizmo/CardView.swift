//
//  CardView.swift
//  Matchizmo
//
//  Created by Rams Tanis on 7/6/22.
//

import SwiftUI

struct CardView: View {
    var card: EmojiMemoryGame.Card
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                let shape = RoundedRectangle(cornerRadius: 20.0)
                if card.isFaceUp {
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: 3)
                    Text(card.content).font(font(in: geometry.size))
                } else if card.isMatched {
                    shape.opacity(0)
                } else {
                    shape.fill()
                }
            }
        }
    }
    
    
    private func font(in size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * 0.8)
    }
}

private struct CardConstants {
    static let cornerRadius: CGFloat = 10.0
    static let lineWidth: CGFloat = 3.0
    static let fontScale: CGFloat = 0.75
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGame<String>.Card(content: "♠️", id: 1))
    }
}
