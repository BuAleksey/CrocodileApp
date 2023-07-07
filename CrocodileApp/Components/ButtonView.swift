//
//  ButtonView.swift
//  CrocodileApp
//
//  Created by Buba on 26.06.2023.
//

import SwiftUI

struct ButtonView: View {
    let action: () -> Void
    let title: DifficultyLevel
    let width: CGFloat
    
    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.progress)
                Text(title.rawValue)
                    .font(.system(.title, design: .rounded, weight: .bold))
                    .foregroundColor(.text)
            }
            .frame(width: width, height: 50)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(action: {}, title: .Start, width: 250)
    }
}
