//
//  ClockTimeModel.swift
//  AnalogClockDemo-SwiftUI
//
//  Created by Gaurav Tak on 25/12/23.
//

import Foundation

struct ClockModel {
    
    let hours: Int
    
    let minutes: Int
    
    let seconds: Int
    
    init(date: Date, timeZoneIdentifier: String) {
        var calendar = Calendar.current
        calendar.timeZone = TimeZone(identifier: timeZoneIdentifier)!
        //TimeZone(abbreviation: timeZoneAbbreviation)!
        
        let now = Date()
        let hours = calendar.component(.hour, from: now)
        self.hours = hours <= 12 ? hours : hours - 12
        minutes = calendar.component(.minute, from: now)
        seconds = calendar.component(.second, from: now)
        print("init(date: Date) \(now) \(String(describing: timeZoneIdentifier)) \(self.hours) \(minutes) \(seconds)")
    }
}
