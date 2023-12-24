//
//  HomeView.swift
//  AnalogClockDemo-SwiftUI
//
//  Created by Gaurav Tak on 25/12/23.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        Image(systemName: "clock").padding(.bottom, 5)
        Text("Analog Clock").foregroundColor(Color.primary)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
