//
//  ProgressTrackView.swift
//  CrocodileApp
//
//  Created by Buba on 26.06.2023.
//

import SwiftUI

struct ProgressTrackView: View {
    var body: some View {
        Circle()
            .fill(Color.clear)
            .frame(width: 250, height: 250)
            .overlay(
                Circle().stroke(Color.emptyLineColor, lineWidth: 20)
            )
    }
}

struct ProgressTrackView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressTrackView()
    }
}
