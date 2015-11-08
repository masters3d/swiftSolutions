//
//  WordCount.swift
//  exercism
//
//  Created by masters3d on 12/30/14.
//  Copyright (c) 2014 masters3d. All rights reserved.
//

import Foundation

struct WordCount{
    
    private var words:String = ""
    
    func count()->[String:Int]{
        
        let custom_set = NSMutableCharacterSet.punctuationCharacterSet()
        custom_set.addCharactersInString(":,!&$%^")
        
        let wordArray = words.stringByTrimmingCharactersInSet(custom_set).stringByReplacingOccurrencesOfString(":", withString: "").stringByReplacingOccurrencesOfString(",", withString: "").stringByReplacingOccurrencesOfString("  ", withString: " ").lowercaseString.componentsSeparatedByString(" ")
        
        let wordFilter = wordArray.filter{contains(wordArray,$0)}
        
        var wordZipWithCounts = [String:Int]()
        
        for (index, word) in enumerate(wordFilter) {
            if contains(wordArray, word){
                wordZipWithCounts[word] = (wordZipWithCounts[word] ?? 0) + 1
            }
        }
       
        return wordZipWithCounts
    }
    
    init(words:String){
        self.words = words
        
    }
}