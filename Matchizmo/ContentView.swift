//
//  ContentView.swift
//  Matchizmo
//
//  Created by Rams Tanis on 7/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView( )
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 20.0)
                    .fill()
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 20.0)
                    .stroke(lineWidth: 3)
                Text("♠️")
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 20.0)
                    .fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider  {
    static var previews: some View {
        ContentView()
    }
}
