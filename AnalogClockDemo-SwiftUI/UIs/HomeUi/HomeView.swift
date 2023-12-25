//
//  HomeView.swift
//  AnalogClockDemo-SwiftUI
//
//  Created by Gaurav Tak on 25/12/23.
//

import SwiftUI

struct HomeView: View {
    
    @Environment(\.horizontalSizeClass) var hSizeClass
    @Environment(\.verticalSizeClass) var vSizeClass
    
    @StateObject var homeViewModel = HomeViewModel()
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            HomeHeaderView(homeViewModel: homeViewModel)
            Spacer()
            if self.homeViewModel.clockTimes.count > 0 {
               if hSizeClass == .compact && vSizeClass == .regular {
                    // device orientation: portrait
                    HomeViewPortrait(homeViewModel: homeViewModel)
                } else {
                    //device orientation: landscape
                    HomeViewLandscape(homeViewModel: homeViewModel)
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
            print("HomeView \(hSizeClass) \(vSizeClass)")
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
