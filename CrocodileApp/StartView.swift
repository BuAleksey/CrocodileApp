//
//  ContentView.swift
//  CrocodileApp
//
//  Created by Buba on 26.06.2023.
//

import SwiftUI

struct StartView: View {
    @State private var mainVewIsShow = false
    
    var body: some View {
        ZStack {
            Color(Color.background.cgColor!)
                .ignoresSafeArea(.all)
            
            VStack {
                Image("crocodile")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                ButtonView(
                    action: { mainVewIsShow.toggle() },
                    title: .Go, width: 200
                )
                    .fullScreenCover(
                        isPresented: $mainVewIsShow,
                        content: { MainView() }
                    )
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
