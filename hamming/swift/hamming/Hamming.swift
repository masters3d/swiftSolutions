//
//  Hamming.swift
//  One more
//
//  Created by masters3d on 12/27/14.
//  Copyright (c) 2014 masters3d. All rights reserved.
//  Xcode Version 6.1.1 (6A2008a)

import Foundation

class Hamming {
    class func compute(input: String, against: String) -> Int? {
        
        if input.unicodeScalars.endIndex != against.unicodeScalars.endIndex{
            return nil
        }
        let zipTuppleSeq = lazy(Zip2(input.unicodeScalars, against.unicodeScalars))
        let seq2filter = zipTuppleSeq.filter { $0 != $1 }
        return reduce(seq2filter, 0) {( each , _) in (each ?? 0) + 1}
        

    }
}


//class Hamming{
//
//   class func compute(input:String ,against:String) ->Int?{
//        var inputArray = Array(input)
//        var againstArray = Array(against)
//        
//        if inputArray.count != againstArray.count {
//            return nil
//        }
//        var compareArray = [Int](count:inputArray.count,  repeatedValue: 0)
//    
//        for (index, _ ) in  enumerate(inputArray){
//            if inputArray[index] != againstArray[index]{
//                compareArray[index] = 1
//            }
//        }
//    
//     return compareArray.reduce(0, combine: +)
//    }
//    
//}