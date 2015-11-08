//
//  bob.swift
//  One more
//
//  Copyright (c) 2014 masters3d. All rights reserved.
//

import Foundation


class Bob {
    
    class func hey(input:String)->String{
        
        let responseList = (
            fine : "Fine, be that way.",
            sure : "Sure." ,
            woah : "Woah, chill out!",
            whatever : "Whatever.")
        
        let charSets = (
            punctuation: NSMutableCharacterSet.punctuationCharacterSet(),
            decimal: NSCharacterSet.decimalDigitCharacterSet(),
            whitespace: NSCharacterSet.whitespaceCharacterSet()
        )
        
        var charSetPunDecWhi = charSets.punctuation
        charSetPunDecWhi.formUnionWithCharacterSet(charSets.decimal)
        charSetPunDecWhi.formUnionWithCharacterSet(charSets.whitespace)
        
        var statement = (
            isEmpty : false ,
            hasQuestion :false ,
            hasExclamation : false,
            isCapital: false,
            isNumber : false
        )
        
        statement.isEmpty        = input.stringByTrimmingCharactersInSet(charSets.whitespace).isEmpty
        statement.hasQuestion    = input.hasSuffix("?")
        statement.hasExclamation = input.hasSuffix("!")
        statement.isCapital      = input == input.uppercaseString
        statement.isNumber       = input.stringByTrimmingCharactersInSet(charSetPunDecWhi) == ""
        
        var returnResponse:String = ""
        
        switch statement{
        case (isEmpty : false ,hasQuestion :false ,hasExclamation : false ,isCapital: true ,isNumber :true):
            (returnResponse = responseList.whatever)
        case (isEmpty : false ,hasQuestion :true ,hasExclamation : false ,isCapital: true ,isNumber :true):
            (returnResponse = responseList.sure)
        case (isEmpty : true ,hasQuestion :false ,hasExclamation : false ,isCapital: _ ,isNumber : _):
            (returnResponse = responseList.fine)
        case (isEmpty : false ,hasQuestion :true ,hasExclamation : _ ,isCapital: false ,isNumber : false):
            (returnResponse = responseList.sure)
        case (isEmpty : false ,hasQuestion :_ ,hasExclamation : _ ,isCapital: true ,isNumber : _):
            (returnResponse = responseList.woah)
        default:returnResponse = responseList.whatever
        }
        
        return returnResponse
        
    }
}