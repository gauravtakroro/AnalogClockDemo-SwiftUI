//
//  HomeView.swift
//  AnalogClockDemo-SwiftUI
//
//  Created by Gaurav Tak on 25/12/23.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                  print("moon icon tapped")
                }, label: {
                    Image(systemName: "moon.fill")
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.primary)
                        .clipShape(Circle())
                })
                Button(action: {
                    print("settings icon tapped")
                }, label: {
                    Image(systemName: "gearshape")
                        .font(.system(size: 36))
                        .foregroundColor(.black)
                        .padding()
                        .clipShape(Circle())
                })
            }.padding(.trailing, 20)
            Spacer()
        }
    }
}

#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
