//
//  DataStore.swift
//  CrocodileApp
//
//  Created by Buba on 26.06.2023.
//

import Foundation
import Combine

class DataStore: ObservableObject {
    static let shared = DataStore()
    let objectWillChange = PassthroughSubject<DataStore, Never>()
    var words = Words.shared.mediumWords
    
    init() {}
}

class Words {
    static let shared = Words()
    
    let easyWords = [
        "ËЖ",
        "БРОНЯ",
        "ШАМПУНЬ",
        "АЛКОГОЛЬ",
        "ПУЗЫРЬ",
        "ЛЕОПАРД",
        "САУНА",
        "БЕНЗОПИЛА",
        "ШИРИНКА",
        "ХОБОТ",
        "КАБЛУК"
    ]
    
    let mediumWords = [
        "КАБАН",
        "КОЛОДЕЦ",
        "ЛОВУШКА",
        "МАТЕМАТИКА",
        "СПРАВОЧНИК",
        "ЛЕОПАРД",
        "САЙНА",
        "БЕНЗОПИЛА",
        "ВИДЕО",
        "ПУЛЕМЕТ"
    ]
    
    let hardWords = [
        "СОЛИСТ",
        "СВУËКЛА",
        "СТАЯ",
        "СЕМАФОР",
        "ДВИГАТЕЛЬ",
        "СТАН",
        "МЕДАЛИСТ",
        "БУНТ",
        "ДИСПЕТЧЕР",
        "ИЗОБРЕТАЛЬ",
        "ЧУМА",
        "АСТРОЛОГ",
        "ЗАПЛЫВ",
        "СËМГА"
    ]
    
    private init() {}
}
