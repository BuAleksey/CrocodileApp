//
//  ProgressView.swift
//  CrocodileApp
//
//  Created by Buba on 26.06.2023.
//

import SwiftUI

struct ProgressView: View {
    var progress: CGFloat
    
    var body: some View {
        VStack {
            Circle()
                .fill(Color.clear)
                .frame(width: 250, height: 250)
                .overlay(
                    Circle()
                        .trim(from: 0, to: progress)
                        .stroke(
                            style: StrokeStyle(
                                lineWidth: 15,
                                lineCap: .round,
                                lineJoin:.round
                            )
                        )
                        .foregroundColor(.fillingLineColor)
                        .animation(.easeInOut(duration: 0.3))
                )
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(progress: 3)
    }
}
