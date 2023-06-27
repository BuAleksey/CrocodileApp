//
//  MainView.swift
//  CrocodileApp
//
//  Created by Buba on 26.06.2023.
//

import SwiftUI

struct MainView: View {
    @StateObject private var timer = TimerCounter()
    
    
    var body: some View {
        ZStack {
            Color(Color.backgroundColor.cgColor!)
                .ignoresSafeArea(.all)
            VStack {
                Spacer()
                WordView(isShowWord: timer.finish)
                    .padding(.bottom)
                Spacer()
                ZStack {
                    ProgressTrackView()
                    ProgressView(progress: timer.progress)
                    TimerView(timer: timer.counter.formatted())
                }
                Spacer()
                ButtonView(action: timer.startTimer, title: timer.titleButton)
                Spacer()
            }
            .padding()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
