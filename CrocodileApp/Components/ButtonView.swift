//
//  ButtonView.swift
//  CrocodileApp
//
//  Created by Buba on 26.06.2023.
//

import SwiftUI

struct ButtonView: View {
    let action: () -> Void
    let title: String
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(.title, design: .rounded, weight: .bold))
                .foregroundColor(.textColor)
        }
        .frame(width: 250, height: 60)
        .background(Color.backgroundColor)
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 2)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(action: {}, title: "Start")
    }
}
