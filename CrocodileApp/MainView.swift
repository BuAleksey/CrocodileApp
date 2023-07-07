//
//  MainView.swift
//  CrocodileApp
//
//  Created by Buba on 26.06.2023.
//

import SwiftUI

struct MainView: View {
    @State private var settingsViewIsShow = false
    @StateObject private var timer = TimerCounter.shared
    @StateObject private var store = DataStore.shared
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(Color.background.cgColor!)
                    .ignoresSafeArea(.all)
                
                VStack {
                    WordView(wordIsShow: timer.finish, words: store.words)
                        .padding([.top, .bottom], 60)
                    
                    ZStack {
                        ProgressTrackView()
                        ProgressView(progress: timer.progress)
                        TimerView(seconds: timer.counter.formatted())
                    }
                    .padding(.bottom, 40)
                    
                    Spacer()
                    
                    ButtonView(
                        action: timer.startTimer,
                        title: timer.titleButton,
                        width: 300
                    )
                    .disabled(timer.titleButton == .Wait)
                    
                    Spacer()
                }
                .padding()
                .toolbar {
                    Button(action: { gearButtonTapped() }) {
                        Image(systemName: "gear")
                            .foregroundColor(.text)
                    }
                    .navigationDestination(isPresented: $settingsViewIsShow, destination: {
                        SettingsView(settingsViewIsShow: $settingsViewIsShow)
                    })
                }
            }
        }
    }
    
    private func gearButtonTapped() {
        timer.killTimer()
        settingsViewIsShow.toggle()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
