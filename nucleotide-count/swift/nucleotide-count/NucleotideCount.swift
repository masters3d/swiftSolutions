//
//  NucleotideCount.swift
//  One more
//
//  Created by masters3d on 12/31/14.
//  Copyright (c) 2014 masters3d. All rights reserved.
//  XCode Version 6.1.1 (6A2008a)

import Foundation

class DNA{
    var strand = ""
    
    func checkValidStand( inString:String ) -> Bool{
        var dictUnique = [String:Int]()
        
        if !inString.isEmpty{
            for each in inString{
                dictUnique[String(each)] = (dictUnique[String(each)] ?? 0) + 1
            }
        }
        if  contains(dictUnique.keys.array, "A") |
            contains(dictUnique.keys.array, "T") |
            contains(dictUnique.keys.array, "C") |
            contains(dictUnique.keys.array, "G") {
                return true
        } else {return false}
    }
    
    class func withStrand(input:String) ->DNA? {
        return self.init(strand: input)
    }
    
    func count(individual:String)->Int?{
        var returnInt = (strand.componentsSeparatedByString(individual).count - 1)
        return (returnInt ?? 0)
    }
    
    func nucleotideCount() -> [String:Int]{
        var dicReturn = [String:Int]()
        for each in "ATCG"{
            var eachString = String(each)
            var result = self.strand.componentsSeparatedByString(eachString).count - 1
            if contains(self.strand,each) {
                dicReturn[eachString] = result
            } else {
                dicReturn[eachString] = 0
            }
        }
        return dicReturn
    }
    var nucleotideCounts: [String:Int]{ get {return nucleotideCount()} set {}}

    
    init?(strand:String){
        
        if checkValidStand(strand) {
            self.strand = strand
        } else if strand.isEmpty{
            self.strand = ""
        } else {
            return nil
        }
        
    }
}