//
//  HomeHeaderView.swift
//  AnalogClockDemo-SwiftUI
//
//  Created by Gaurav Tak on 25/12/23.
//

import SwiftUI

struct HomeHeaderView: View {
    
    @ObservedObject var homeViewModel: HomeViewModel
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                print("moon icon tapped")
                homeViewModel.isDark.toggle()
                homeViewModel.vibrationFeedback()
            }, label: {
                Image(systemName: homeViewModel.isDark ? "sun.min.fill" : "moon.fill")
                    .font(.system(size: 16))
                    .foregroundColor(homeViewModel.isDark ? .black : .white)
                    .padding()
                    .background(Color.primary)
                    .clipShape(Circle())
            })
        }.padding(.trailing, 20)
    }
}
