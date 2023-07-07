//
//  WordView.swift
//  CrocodileApp
//
//  Created by Buba on 26.06.2023.
//

import SwiftUI

struct WordView: View {
    let wordIsShow: Bool
    let words: [String]
    
    var body: some View {
        Text(
            wordIsShow
            ? String(words.randomElement()!)
            : "Click start and let's go"
        )
            .frame(height: 30)
            .font(.custom("Avenir Next", size: 30))
            .fontWeight(.bold)
            .foregroundColor(.text)
    }
}

struct WordView_Previews: PreviewProvider {
    static var previews: some View {
        WordView(wordIsShow: true, words: ["apple"])
    }
}
