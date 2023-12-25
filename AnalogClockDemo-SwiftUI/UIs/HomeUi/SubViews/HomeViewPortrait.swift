//
//  HomeViewPortrait.swift
//  AnalogClockDemo-SwiftUI
//
//  Created by Gaurav Tak on 25/12/23.
//

import SwiftUI

struct HomeViewPortrait: View {
    @ObservedObject var homeViewModel: HomeViewModel
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ClockTimeView(homeViewModel: homeViewModel, place: "India", clockIndex: 0).frame(width: homeViewModel.bigClockDimension, height: homeViewModel.bigClockDimension)
                HStack {
                    ClockTimeView(homeViewModel: homeViewModel, place: "UTC", clockIndex: 1).frame(width: homeViewModel.smallClockDimension, height: homeViewModel.smallClockDimension)
                    ClockTimeView(homeViewModel: homeViewModel, place: "Los Angeles", clockIndex: 2).frame(width: homeViewModel.smallClockDimension, height: homeViewModel.smallClockDimension)
                }
                
                HStack {
                    ClockTimeView(homeViewModel: homeViewModel, place: "New York", clockIndex: 3).frame(width: homeViewModel.smallClockDimension, height: homeViewModel.smallClockDimension)
                    ClockTimeView(homeViewModel: homeViewModel, place: "London", clockIndex: 4).frame(width: homeViewModel.smallClockDimension, height: homeViewModel.smallClockDimension)
                }
            }
        }
    }
}
