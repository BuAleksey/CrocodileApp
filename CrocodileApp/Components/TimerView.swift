//
//  TimerView.swift
//  CrocodileApp
//
//  Created by Buba on 26.06.2023.
//

import SwiftUI

struct TimerView: View {
    var seconds: String
    
    var body: some View {
        Text(seconds)
            .font(.system(.largeTitle, design: .rounded, weight: .bold))
            .foregroundColor(.text)
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(seconds: "3")
    }
}
