//
//  ClockTimeDigits.swift
//  AnalogClockDemo-SwiftUI
//
//  Created by Gaurav Tak on 25/12/23.
//

import SwiftUI

struct ClockTimeDigits: View {
    
    private let relativeLength: CGFloat = 0.05
    
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                Text("3").font(.system(size: 16)).fontWeight(.bold).padding(.trailing, 30)
            }.frame(maxWidth: .infinity)
            HStack {
                Text("9").font(.system(size: 16)).fontWeight(.bold).padding(.leading, 30)
                Spacer()
            }.frame(maxWidth: .infinity)
            VStack {
                Spacer()
                Text("6").font(.system(size: 20)).fontWeight(.bold).padding(.bottom, 2).foregroundColor(.red)
            }.frame(maxWidth: .infinity)
            VStack {
                Text("12").font(.system(size: 20)).fontWeight(.bold).padding(.top, 2).foregroundColor(.red)
                Spacer()
            }.frame(maxWidth: .infinity)
        }
    }
}
