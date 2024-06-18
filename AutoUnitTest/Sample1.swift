//
//  Sample1.swift
//  UnitTestSample
//
//  Created by masazumi oeda on 2024/06/15.
//

import Foundation

class Sample1 {
  var val1 = false
  
  func fun1(arg1: Int) -> Bool {
    if arg1 > 0 {
      return true
    }
    
    return false
  }
  
  func fun2(arg1: Int) {
    if arg1 > 0 {
      self.val1 = true
    } else {
      self.val1 = false
    }
  }
  
  func fun3(arg1: Int) -> Bool {
    if arg1 > 0 {
      return true
    }
    
    return false
  }
  
  func fun4(arg1: Int) -> Bool {
    if arg1 > 0 {
      return false
    }
    
    return true
  }
  
  func fun5(arg1: Int) -> Bool {
    if arg1 > 0 {
      return true
    }
    
    return false
  }
}
