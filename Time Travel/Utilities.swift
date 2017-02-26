//
//  Utilities.swift
//  Time Travel
//
//  Created by Dragos-Robert Neagu  on 13/02/2017.
//  Copyright © 2017 Dragos-Robert Neagu. All rights reserved.
//

import Foundation

class Utilities {
    
//  GetCurrentYear gets the current used calendar and returns a string
//  representing the current year component of the calendar.
    func GetCurrentYear () -> String {
        let date = NSDate ()
        let calendar = NSCalendar.currentCalendar()
        return String (calendar.component(.Year, fromDate: date))
    }
    
//  GetLetterAtIndex is used for string manipulation returning a substring
//  representing the letter at a certain index in the main string. 
//  Used to separate the year in digits.
    func GetLetterAtIndex (str : String, location: Int ) -> String {
        return String(str[str.startIndex.advancedBy(location)])
    }
   
//  GetCurrentTIme calculates and formats the time, and then returns
//  it as a string.
    func GetCurrentTime() -> String{
        let date = NSDate()
        let formatter = NSDateFormatter()
        formatter.dateStyle = .NoStyle
        formatter.timeStyle = .MediumStyle
        
        let timeString = formatter.stringFromDate(date)
        return timeString
    }
    
    func GetRandomYear() -> String {
        let date = NSDate ()
        let calendar = NSCalendar.currentCalendar()
        
        let rYear = arc4random_uniform(UInt32(1000))

        let rDate = calendar.dateByAddingUnit(.Year, value: Int(rYear), toDate: date, options: [])
        return String (calendar.component(.Year, fromDate: rDate!))
    }
}
