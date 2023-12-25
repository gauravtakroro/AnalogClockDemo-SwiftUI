//
//  ClockTimeView.swift
//  AnalogClockDemo-SwiftUI
//
//  Created by Gaurav Tak on 25/12/23.
//

import SwiftUI

struct ClockTimeView: View {
    
    @ObservedObject var homeViewModel: HomeViewModel
    var place: String
    let clockIndex: Int
    
    var body: some View {
        VStack {
            ZStack {
                Circle().stroke(Color.primary)
                ClockTimeMarks()
                ClockTimeDigits()
                ClockTimeIndicator(type: .hour, clockTime: homeViewModel.clockTimes[clockIndex])
                ClockTimeIndicator(type: .minute, clockTime: homeViewModel.clockTimes[clockIndex])
                ClockTimeIndicator(type: .second, clockTime: homeViewModel.clockTimes[clockIndex])
            }
            HStack {
                Text("Place:")
                Text(place).bold()
            }
            HStack {
                Text("Time:")
                Text(homeViewModel.clockTimes[clockIndex].timeForDisplay).bold()
            }
        }
        .padding()
        .aspectRatio(1, contentMode: .fit)
    }
}
