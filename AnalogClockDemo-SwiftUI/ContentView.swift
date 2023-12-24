//
//  ContentView.swift
//  AnalogClockDemo-SwiftUI
//
//  Created by Gaurav Tak on 24/12/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Image(systemName: "clock").padding(.bottom, 5)
        Text("Analog Clock").foregroundColor(Color.primary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
