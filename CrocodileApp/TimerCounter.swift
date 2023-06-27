//
//  TimerCounter.swift
//  CrocodileApp
//
//  Created by Buba on 26.06.2023.
//

import Foundation
import Combine
import SwiftUI

class TimerCounter: ObservableObject {
    let objectWillChange = PassthroughSubject<TimerCounter, Never>()
    
    var counter = 3
    var progress: CGFloat { CGFloat(counter) / 3 }
    var titleButton = "Start"
    var timer: Timer?
    
    var finish = false
    
    func startTimer() {
        if counter > 0 {
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(updateTimer),
                userInfo: nil,
                repeats: true
            )
        }
        buttonDidTapped()
    }
    
    @objc private func updateTimer() {
        if counter > 0 {
            withAnimation {
                counter -= 1
            }
        } else {
            killTimer()
            titleButton = "Reset"
        }
        
        objectWillChange.send(self)
    }
    
    private func buttonDidTapped() {
        if titleButton == "Reset" {
            finish = false
            counter = 3
            titleButton = "Start"
        } else {
            finish = true
            titleButton = "Wait"
        }
        
        objectWillChange.send(self)
    }
    
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
}


