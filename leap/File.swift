//
//  File.swift
//  One more
//
//  Created by jjimenez on 12/22/14.
//  Copyright (c) 2014 masters3d. All rights reserved.
//

import Foundation

class Year{
   var calendarYear:Int
    var isLeapYear:Bool = false
    init(calendarYear:Int){
        self.calendarYear = calendarYear
        if calendarYear % 400 == 0 {
            self.isLeapYear = true}
        if calendarYear % 100 != 0 {
            if calendarYear % 4 == 0 {
                self.isLeapYear = true
            }
            
        }

    }
}