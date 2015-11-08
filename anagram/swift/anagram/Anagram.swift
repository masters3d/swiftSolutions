//
//  Anagram.swift
//  One more
//
//  Created by masters3d on 12/30/14.
//  Copyright (c) 2014 masters3d. All rights reserved.
//

import Foundation

struct Anagram{
    private let word = ""
    
    func match(input:[String])->[String]{
        let wordArray = Array(word.lowercaseString)
        var returnPassed = [String]()
        
        for (currentIndex,each) in enumerate(input){
            if each.lowercaseString.unicodeScalars.endIndex == word.lowercaseString.unicodeScalars.endIndex{
                if lazy(lazy(each.lowercaseString).filter{contains(wordArray,$0)}).array.count == wordArray.count{
                    if each.lowercaseString != word.lowercaseString{
                        if lazy(word.lowercaseString).array.sorted(<) == lazy(each.lowercaseString).array.sorted(<){
                            returnPassed.append(each)
             }}}}}
        return returnPassed
    }
    
    init(word:String){
        self.word = word
        
    }
}