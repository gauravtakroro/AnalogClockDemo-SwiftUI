//
//  ClockTimeModel.swift
//  AnalogClockDemo-SwiftUI
//
//  Created by Gaurav Tak on 25/12/23.
//

import Foundation

struct ClockTimeModel {
    
    let hours: Int
    
    let minutes: Int
    
    let seconds: Int
    
    var timeForDisplay:String
    
    init(date: Date, timeZoneIdentifier: String) {
        var calendar = Calendar.current
        calendar.timeZone = TimeZone(identifier: timeZoneIdentifier)!
        let now = Date()
        let hours = calendar.component(.hour, from: now)
        let am_pm_Display = hours <= 12 ? "AM" : "PM"
        self.hours = hours <= 12 ? hours : hours - 12
        let hoursDisplay = self.hours < 10 ? "0\(self.hours)" : "\(self.hours)"
        minutes = calendar.component(.minute, from: now)
        let minutesDisplay = self.minutes < 10 ? "0\(minutes)" : "\(minutes)"
        seconds = calendar.component(.second, from: now)
        let secondsDisplay = self.seconds < 10 ? "0\(seconds)" : "\(seconds)"
        self.timeForDisplay = "\(hoursDisplay):\(minutesDisplay):\(secondsDisplay) \(am_pm_Display)"
        print("ClockTimeModel init(date: Date) \(now) \(timeZoneIdentifier) \(self.hours) \(minutes) \(seconds)")
    }
}
