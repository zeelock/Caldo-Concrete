//
//  Job_Data.swift
//  Caldo Concrete
//
//  Created by sandy cotugno on 11/16/20.
//

import Foundation

class JobData {
    var testaddressArray:[String] = []
    var testJobArray:[String] = []
    
    func testIndex( Str: String? ) -> [String]{
    
        testaddressArray = ["red","green","blue","apple"]
        
        return testaddressArray
    }
    
    func setJobTable(jobAt: String) -> [String] {
        
        testJobArray = []
        
        
        switch jobAt {
        
        case "red":
            testJobArray = ["this is red","it is not green","it is also not blue"," its red"]
        
        case "green":
            testJobArray = ["this is green","it is not blue","it is also not Green"," its Green"]
       
        case "blue":
        testJobArray = ["this is blue","it is not green","it is also not red"," its blue"]
        
        case "apple":
        testJobArray = ["this is not a color","it is in facked ","an apple"]

        default:
            testJobArray = ["ERROR"]  
        }
  
        return testJobArray
  }
 }

    
    
    


