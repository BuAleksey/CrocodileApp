//
//  DataStore.swift
//  CrocodileApp
//
//  Created by Buba on 26.06.2023.
//

import Foundation

class DataStore {
    static let shared = DataStore()
    
    let words = [
        "нарцисс",
        "ежедневник",
        "субботник",
        "календарь",
        "пузырь",
        "леопард",
        "сауна",
        "бензопила"
    ]
    
    private init() {}
}
