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
                PieView(startAngle: Angle(degrees: 0-90), endAngle: Angle(degrees: 110-90))
                    .padding(CardConstants.timerPadding)
                    .opacity(CardConstants.timerOpacity)
                Text(card.content).font(font(in: geometry.size))
            }
            .cardify(isFaceUp: card.isFaceUp)
        }
    }
    
    
    private func font(in size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * 0.8)
    }
}

private struct CardConstants {
    static let cornerRadius: CGFloat = 10.0
    static let lineWidth: CGFloat = 3.0
    static let fontScale: CGFloat = 0.70
    static let timerPadding: CGFloat = 5.0
    static let timerOpacity: Double = 0.5
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGame<String>.Card(content: "♠️", id: 1))
    }
}
