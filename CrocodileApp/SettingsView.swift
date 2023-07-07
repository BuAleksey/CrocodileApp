//
//  SettingsView.swift
//  CrocodileApp
//
//  Created by Buba on 04.07.2023.
//

import SwiftUI

enum Difficulty: Int, CaseIterable {
    case hard = 30
    case medium = 60
    case easy = 100
}

struct SettingsView: View {
    @StateObject private var timer = TimerCounter.shared
    @StateObject private var store = DataStore.shared
    
    @Binding var settingsViewIsShow: Bool
    
    @State var count = 0
    @State var alertIsShow = false
    
    var body: some View {
        ZStack {
            Color(Color.background.cgColor!)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Text("Seconds")
                        .foregroundColor(.progress)
                        .font(.system(.title3, design: .rounded, weight: .medium))
                    
                    Spacer()
                    
                    Picker("Seconds", selection: $count) {
                        ForEach(Difficulty.allCases, id: \.rawValue) { difficulty in
                            Text(difficulty.rawValue.formatted())
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .onAppear {
                        UISegmentedControl
                            .appearance().selectedSegmentTintColor = UIColor(
                                Color.progress
                            )
                        UISegmentedControl
                            .appearance().backgroundColor = UIColor(
                                Color.progressTreck
                            )
                        UISegmentedControl
                            .appearance().setTitleTextAttributes(
                                [.foregroundColor: UIColor.white],
                                for: .normal
                            )
                    }
                    .frame(width: 200)
                }
                .alert(
                    "Please set the number of seconds",
                    isPresented: $alertIsShow,
                    actions: {}
                )
                .padding()
                
                Spacer()
                
                ButtonView(action: apply, title: .Apply, width: 300)
                
                Spacer()
            }
            // TODO: make color title
            //.navigationTitle(Text("Settings"))
            .navigationBarBackButtonHidden()
        }
    }
    
    private func apply() {
        timer.counter = count
        timer.fullCounter = count
        
        if count != 0 {
            timer.acceptNewSettings()
            
            if count == 30 {
                store.words = Words.shared.easyWords
            } else if count == 60 {
                store.words = Words.shared.mediumWords
            } else if count == 100 {
                store.words = Words.shared.hardWords
            }
            store.objectWillChange.send(store)
            settingsViewIsShow.toggle()
        } else {
            alertIsShow.toggle()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(settingsViewIsShow: .constant(true))
    }
}
