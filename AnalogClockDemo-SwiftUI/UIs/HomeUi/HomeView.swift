//
//  HomeView.swift
//  AnalogClockDemo-SwiftUI
//
//  Created by Gaurav Tak on 25/12/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeViewModel = HomeViewModel()
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            HomeHeaderView(homeViewModel: homeViewModel)
            Spacer()
            if self.homeViewModel.clockTimes.count > 0 {
                ScrollView {
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
        }.onReceive(timer, perform: { time in
            print("onReceive---\(time)")
            if homeViewModel.clockTimes.count > 0 {
                homeViewModel.clockTimes[0] = ClockTimeModel(date: time, timeZoneIdentifier: "Asia/Calcutta")
                homeViewModel.clockTimes[1] = ClockTimeModel(date: time, timeZoneIdentifier: "UTC")
                homeViewModel.clockTimes[2] = ClockTimeModel(date: time, timeZoneIdentifier: "America/Los_Angeles")
                homeViewModel.clockTimes[3] = ClockTimeModel(date: time, timeZoneIdentifier: "America/New_York")
                homeViewModel.clockTimes[4] = ClockTimeModel(date: time, timeZoneIdentifier: "Europe/London")
            }
        }).onAppear {
            homeViewModel.clockTimes.append(ClockTimeModel(date: Date(),timeZoneIdentifier:  "Asia/Calcutta"))
            homeViewModel.clockTimes.append(ClockTimeModel(date: Date(),timeZoneIdentifier: "UTC"))
            homeViewModel.clockTimes.append(ClockTimeModel(date: Date(),timeZoneIdentifier:  "America/Los_Angeles"))
            homeViewModel.clockTimes.append(ClockTimeModel(date: Date(),timeZoneIdentifier: "America/New_York"))
            homeViewModel.clockTimes.append(ClockTimeModel(date: Date(),timeZoneIdentifier: "Europe/London"))
        }.preferredColorScheme(homeViewModel.isDark ? .dark : .light)
    }
}

#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
