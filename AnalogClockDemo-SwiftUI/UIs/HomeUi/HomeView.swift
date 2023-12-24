//
//  HomeView.swift
//  AnalogClockDemo-SwiftUI
//
//  Created by Gaurav Tak on 25/12/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeViewModel = HomeViewModel()
    
    var body: some View {
        VStack {
            HomeHeaderView(homeViewModel: homeViewModel)
            Spacer()
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
