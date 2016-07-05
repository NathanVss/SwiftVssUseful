//
//  VssAgo.swift
//  Pods
//
//  Created by Nathan Vasse on 25/06/2016.
//
//

import UIKit


public struct VssDateInterval {
    public var years = 0
    public var months = 0
    public var days = 0
    public var hours = 0
    public var minutes = 0
    public var seconds = 0
}

public class VssAgo {

    static var secondsInMinute = 60
    static var secondsInHour = secondsInMinute * 60
    static var secondsInDay = secondsInHour * 24
    static var secondsInMonth = secondsInDay * 30
    static var secondsInYear = secondsInDay * 365

    public static func toHuman(var seconds: Int) -> VssDateInterval {
        
        var years = seconds / secondsInYear
        seconds = seconds % secondsInYear
        
        var months = seconds / secondsInMonth
        seconds = seconds % secondsInMonth
        
        var days = seconds / secondsInDay
        seconds = seconds % secondsInDay
        
        var hours = seconds / secondsInHour
        seconds = seconds % secondsInHour
        
        var minutes = seconds / secondsInMinute
        seconds = seconds % secondsInMinute
        
        var interval = VssDateInterval(years: years, months: months, days: days, hours: hours, minutes: minutes, seconds: seconds)
        
        
        return interval
    }
    
}