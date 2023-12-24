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
            HStack {
                Spacer()
                Button(action: {
                    print("moon icon tapped")
                    homeViewModel.isDark.toggle()
                }, label: {
                    Image(systemName: homeViewModel.isDark ? "sun.min.fill" : "moon.fill")
                        .font(.system(size: 16))
                        .foregroundColor(homeViewModel.isDark ? .black : .white)
                        .padding()
                        .background(Color.primary)
                        .clipShape(Circle())
                })
                Button(action: {
                    print("settings icon tapped")
                }, label: {
                    Image(systemName: homeViewModel.isDark ? "gearshape.fill" : "gearshape")
                        .font(.system(size: 36))
                        .foregroundColor(homeViewModel.isDark ? .white : .black)
                        .padding()
                        .clipShape(Circle())
                })
            }.padding(.trailing, 20)
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
