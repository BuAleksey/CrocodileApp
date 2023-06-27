//
//  WordView.swift
//  CrocodileApp
//
//  Created by Buba on 26.06.2023.
//

import SwiftUI

struct WordView: View {
    let isShowWord: Bool
    
    var body: some View {
        Text(isShowWord ? String(DataStore.shared.words.randomElement()!) : "")
            .frame(height: 60)
            .font(.custom("Avenir Next", size: 30))
            .fontWeight(.bold)
            .foregroundColor(.textColor)
    }
}

struct WordView_Previews: PreviewProvider {
    static var previews: some View {
        WordView(isShowWord: true)
    }
}
