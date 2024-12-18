//
//  ContentView.swift
//  CircularProgress
//
//  Created by Alperen KARACA on 18.12.2024.
//

import SwiftUI


struct ContentView: View {
    @State var firstCirclePercentage : Double = 0
    @State var secondCirclePercentage : Double = 0
    @State var thirdCirclePercentage : Double = 0

    var body: some View {
        ZStack {
            CircularView(linewidth: 40, backgroundColor: Color.red.opacity(0.2), foregroundColor: Color.red, percentage: firstCirclePercentage)
                .frame(width: 350 , height: 350)
                .onTapGesture {
                    if self.firstCirclePercentage == 0 {
                        self.firstCirclePercentage = 100
                    }else {
                        self.firstCirclePercentage = 0
                    }
                }
            CircularView(linewidth: 40, backgroundColor: Color.green.opacity(0.2), foregroundColor: Color.green, percentage: secondCirclePercentage)
                .frame(width: 250 , height: 250)
                .onTapGesture {
                    if self.secondCirclePercentage == 0 {
                        self.secondCirclePercentage = 75
                    }else {
                        self.secondCirclePercentage = 0
                    }
                }
            CircularView(linewidth: 40, backgroundColor: Color.blue.opacity(0.2), foregroundColor: Color.blue, percentage: thirdCirclePercentage)
                .frame(width: 150 , height: 150)
                .onTapGesture {
                    if self.thirdCirclePercentage == 0 {
                        self.thirdCirclePercentage = 25
                    }else {
                        self.thirdCirclePercentage = 0
                    }
                }
        }
        
    }
}

#Preview {
    ContentView()
}
