//
//  Allergies.swift
//  One more
//
//  Created by jjimenez on 1/6/15.
//  Copyright (c) 2015 masters3d. All rights reserved.
//

import Foundation


struct Allergies{
    
    let bitMask:UInt = 0b11111111
    let bitMaskArray = [String]()
    
    init(_ input:UInt){
        self.bitMask = input
        let tempInputString  = lazy(String(input,radix: 2)).reverse()
        var tempInputArray = ["0","0","0","0","0","0","0","0"]
        
        for (index, each) in enumerate(tempInputString){
            tempInputArray[index] = String(each)
        }
        self.bitMaskArray = tempInputArray
        
        
    }
    
    
    static let eggs        :UInt = 1
    static let peanuts     :UInt = 2
    static let shellfish   :UInt = 4
    static let strawberries:UInt = 0x1 << 3
    static let tomatoes    :UInt = 0x1 << 4
    static let chocolate   :UInt = 0x1 << 5
    static let pollen      :UInt = 0x1 << 6
    static let cats        :UInt = 0x1 << 7
    
    let list = [eggs:("eggs", 0), peanuts:("peanuts",1), shellfish:("shellfish",2), strawberries:("strawberries",3), tomatoes:("tomatoes",4), chocolate:("chocolate",5), pollen:("pollen",6), cats:("cats",7)]
    
    
    
    func hasAllergy(input:UInt) -> Bool {
        
        let allergyCheck = list[input] ?? ("" , 0)
        if bitMaskArray[allergyCheck.1] == "1" {
            return true //"Bob is allergic to allergy \(allergyCheck.0)"
        } else {
            return false //"Bob is not allergic to \(allergyCheck.0)"}
        }}
    
    
    
}