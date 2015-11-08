//
//  PhoneNumber.swift
//  One more
//
//  Created by masters3d on 1/1/15.
//  Copyright (c) 2015 masters3d. All rights reserved.
//  Xcode Version 6.1.1 (6A2008a)

import Foundation

struct PhoneNumber{
    let startingNumber:String = ""
    
    
    func number()->String{
        var cleanNum:String = startingNumber.stringByReplacingOccurrencesOfString("\\D", withString: "", options: NSStringCompareOptions.RegularExpressionSearch)
        let firstNum:String = startingNumber.substringToIndex(advance(startingNumber.startIndex, 1))
        
        if  countElements(cleanNum) == 11 && firstNum == "1" {
        cleanNum = cleanNum.substringWithRange(Range(start: advance(cleanNum.startIndex, 1),end: cleanNum.endIndex  ))
        }
        if countElements(cleanNum) == 10 {
            return cleanNum
        }
     return "0000000000"
    }
    
    func areaCode()->String{
        return number().substringToIndex(advance(number().startIndex, 3))
        
    }
    
    func sevenDigitNumber()->String{
        let numPart1 = number().substringWithRange(Range(start: advance(number().startIndex, 3),end: advance(number().startIndex, 6)  ))
        let numPart2 = number().substringWithRange(Range(start: advance(number().startIndex, 6), end: number().endIndex ))
        
        return numPart1 + "-" + numPart2

    }
    
    func description()->String{
        return "(" + areaCode() + ") " + sevenDigitNumber()
        
    }
    
    init(startingNumber:String){
        self.startingNumber = startingNumber
    }
    
}