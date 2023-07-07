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
    static let shared = TimerCounter()
    
    let objectWillChange = PassthroughSubject<TimerCounter, Never>()
    
    var counter = 60
    var fullCounter = 60
    var progress: CGFloat { CGFloat(counter) / CGFloat(fullCounter) }
    
    var titleButton = DifficultyLevel.Start
    var timer: Timer?
    
    var finish = false
    
    private init() {}
    
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
            titleButton = .Restart
        }
        
        objectWillChange.send(self)
    }
    
    private func buttonDidTapped() {
        if titleButton == .Restart {
            finish = false
            counter = fullCounter
            titleButton = .Start
        } else {
            finish = true
            titleButton = .Wait
        }
        
        objectWillChange.send(self)
    }
    
    func killTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    func acceptNewSettings() {
        finish = false
        titleButton = .Start
        objectWillChange.send(self)
    }
}


