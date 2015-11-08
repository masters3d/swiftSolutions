//
//  Accumulate.swift
//  One more
//
//  Created by masters3d on 1/7/15.
//  Copyright (c) 2015 masters3d. All rights reserved.
//

import Foundation


extension Array {
    
    func accumulate(funcIn:(input:(T)) -> [T]) -> [[T]]{
        var tempArray = [[T]]()
        
        for each in self{
            tempArray.append(funcIn(input: each as T))
        }
        return tempArray
    }
    
}

extension Array {
    
    
    func accumulate(funcIn:(input:(T)) -> T) -> [T]{
            var tempArray = [T]()
      
            for each in self{
                tempArray.append(funcIn(input: each))
            }
            return tempArray
    }
    
}