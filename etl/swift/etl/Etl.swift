//
//  Etl.swift
//  One more
//
//  Created by Masters3d on 12/30/14.
//  Copyright (c) 2014 masters3d. All rights reserved.
//

import Foundation

class ETL{
    
     class func transform(input:[Int:[String]])->[String:Int]{
        
        var inputNewDict = [String:Int]()
    
        for (key,value) in input{
            for each in value{
             inputNewDict[each.lowercaseString] = key
            }
            
        }
        return inputNewDict
    }
}