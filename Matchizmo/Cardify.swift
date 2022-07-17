//
//  Cardify.swift
//  Matchizmo
//
//  Created by Rams Tanis on 7/16/22.
//

import SwiftUI

struct Cardify: ViewModifier {
    var isFaceUp: Bool
    
    func body(content: Content) -> some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
            } else {
                shape.fill()
            }
            
            content
                .opacity(isFaceUp ? 1 : 0)
        }
    }
    
    private struct CardConstants {
        static let cornerRadius: CGFloat = 10.0
        static let lineWidth: CGFloat = 3.0
        static let fontScale: CGFloat = 0.70
        static let timerPadding: CGFloat = 5.0
        static let timerOpacity: Double = 0.5
    }
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        return self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
