//
//  GradeSchool.swift
//  One more
//
//  Created by masters3d on 1/3/15.
//  Copyright (c) 2015 masters3d. All rights reserved.
//  XCODE 6.1.1

import Foundation

class GradeSchool{
    
    var db = [Int:[String]]()
    
   func addStudent(studentName:String, grade: Int){
    var tempStudents = self.db[grade] ?? [String]()
    tempStudents.append(studentName)
    self.db[grade] = tempStudents
    
    }
    
    func studentsInGrade(grade:Int)->[String]{
        if let tempStudent = self.db[grade]{
            return tempStudent
        }
        return [String]()
    }

    func sortedRoster()->[Int:[String]]{
        var tempDict = [Int:[String]]()
        
        for (k,v) in Array(db).sorted({$0.0 > $1.0}) {
            tempDict[k] = v.sorted({$0 < $1})
        }
        
        return tempDict
    }


}