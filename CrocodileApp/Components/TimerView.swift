//
//  TimerView.swift
//  CrocodileApp
//
//  Created by Buba on 26.06.2023.
//

import SwiftUI

struct TimerView: View {
    var timer: String
    
    var body: some View {
        Text(timer)
            .font(.system(.largeTitle, design: .rounded, weight: .bold))
            .foregroundColor(.textColor)
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(timer: "3")
    }
}
