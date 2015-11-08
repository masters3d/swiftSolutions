//
//  PerfectNumbers.swift
//  One more
//
//  Created by masters3d on 1/6/15.
//  Copyright (c) 2015 masters3d. All rights reserved.
//  Xcode Version 6.1.1 (6A2008a)

import Foundation

enum NumberClassification{
    case Perfect
    case Deficient
    case Abundent
    case None
}


struct NumberClassifier{
    
    init(number:Int){
        self.number = number
        
        if number != 0 {
            if sum(number) == number{
                self.classification = .Perfect
            }
            if sum(number) > number {
                self.classification = .Abundent
            }
            if sum(number) < number {
                self.classification = .Deficient
            }
        }
        
            }
    
    let number:Int = 0
    var classification = NumberClassification.None
    var sumOfFactors:Int = 0
    
    func sum(factorsNumber:Int) ->Int {
        
        var checkFactor = {(input:Int) -> Bool in
            return factorsNumber % input == 0
        }
        var arrayPossibleFactors = Array(1..<factorsNumber)
        
        return arrayPossibleFactors.filter(checkFactor).reduce(0, combine: +)
        
    }
    
    
}