//
//  RobotName.swift
//  One more
//
//  Created by masters3d on 1/4/15.
//  Copyright (c) 2015 masters3d. All rights reserved.
//  Xcode 6.1.1

import Foundation


class Robot {
    
    var name:String = ""
    
    func setName() -> String{
        let AZ = Array(0x61...0x7A).map({String(UnicodeScalar($0))})
        let char1 = AZ[Int(arc4random())%26].uppercaseString
        let char2 = AZ[Int(arc4random())%26].uppercaseString
        let char3 = String(arc4random_uniform(10))
        let char4 = String(arc4random_uniform(10))
        let char5 = String(arc4random_uniform(10))
        
        
       return char1 + char2 + char3 + char4 + char5
    }
    
    func resetName(){
        self.name = self.setName()
    }
    
    
     init(){

     self.name = self.setName()
    }
    
}