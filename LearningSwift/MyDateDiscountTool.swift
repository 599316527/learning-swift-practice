//
//  class.MyDateDiscountTool.swift
//  LearningSwift
//
//  Created by Binary on 10/8/15.
//  Copyright © 2015 EvilBinary. All rights reserved.
//

import Foundation

class MyDateDiscountTool {
    
    static func isLeapYear(year: Int) -> Bool {
        return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
    }
    
    static func getMonthDay(month: Int, year: Int) -> Int {
        switch month {
        case 4, 6, 9, 11:
            return 30
        case 2:
            return isLeapYear(year) ? 29 : 28
        default:
            return 31
        }
    }
    
    static func getYearDay(date: Int, month: Int, year: Int) -> Int {
        var days:Int = date
        for i in 1..<month {
            days += getMonthDay(i, year: year)
        }
        return days
    }
    
    static func getPreviousDate(date: Int, month: Int, year: Int) -> (date: Int, month: Int, year: Int) {
        var _date:Int, _month:Int, _year:Int
        _date = date - 1
        _month = month
        _year = year
        if _date < 1 {
            _date = getMonthDay(--_month, year: _year)
        }
        if _month < 1 {
            --_year
            _month = 12
            _date = getMonthDay(_month, year: _year)
        }
        return (_date, _month, _year)
    }
    
    static func findTheDateBefore(days days: Int, from date: Int, month: Int, year: Int)
        -> (date: Int, month: Int, year: Int) {
            var count:Int = days
            var _date:Int = date
            var _month:Int = month
            var _year:Int = year
            while count-- > 0 {
                (date: _date, month: _month, year: _year) = getPreviousDate(_date, month: _month, year: _year)
            }
            return (date: _date, month: _month, year: _year)
    }
}