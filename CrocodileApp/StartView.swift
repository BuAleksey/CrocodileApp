//
//  ContentView.swift
//  CrocodileApp
//
//  Created by Buba on 26.06.2023.
//

import SwiftUI

struct StartView: View {
    @State private var isShowMainView = false
    
    var body: some View {
        ZStack {
            Color(Color.backgroundColor.cgColor!)
                .ignoresSafeArea(.all)
            Button("Start", action: {isShowMainView = true})
                .fullScreenCover(
                    isPresented: $isShowMainView,
                    content: { MainView() }
                )
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
