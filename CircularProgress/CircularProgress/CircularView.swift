//
//  CircularView.swift
//  CircularProgress
//
//  Created by Alperen KARACA on 18.12.2024.
//

import SwiftUI

struct CircularView: View {
    let linewidth : CGFloat
    let backgroundColor : Color
    let foregroundColor : Color
    let percentage : Double
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                CircularShape()
                    .stroke(style: StrokeStyle(lineWidth: linewidth))
                    .fill(backgroundColor)
                
                CircularShape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: linewidth , lineCap: .round))
                    .fill(foregroundColor)
            }
            .animation(.bouncy(duration: 1.0), value: percentage)
            .padding(linewidth / 2)

        }
    }
}

#Preview {
    CircularView(linewidth: 10, backgroundColor: .red, foregroundColor: .green, percentage: 50)
}
