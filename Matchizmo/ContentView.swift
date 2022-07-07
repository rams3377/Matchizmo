//
//  ContentView.swift
//  Matchizmo
//
//  Created by Rams Tanis on 7/3/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))]) {
                ForEach(viewModel.cards) { card in
                    CardView(card: card)
                        .aspectRatio(2/3, contentMode: .fit)
                        .onTapGesture {
                            viewModel.choose(card)
                        }
                }
            }
            .foregroundColor(.red)
             
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider  {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
