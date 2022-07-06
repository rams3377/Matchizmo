//
//  ContentView.swift
//  Matchizmo
//
//  Created by Rams Tanis on 7/3/22.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 85))]) {
                ForEach(viewModel.cards) { card in
                    CardView(card: card)
                        .aspectRatio(2/3, contentMode: .fit)
                }
            }
            .foregroundColor(.red)
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
        }
    }
}

struct ContentView_Previews: PreviewProvider  {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
