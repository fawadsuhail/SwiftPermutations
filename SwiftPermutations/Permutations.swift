//
//  Permutations.swift
//  SwiftPermutations
//
//  Created by Fawad Suhail on 7/31/16.
//  Copyright © 2016 Fawad Suhail. All rights reserved.
//

import Foundation

extension Array {
  
  func permutations() -> [[Element]] {
    
    if count == 1 {
      return [[self[0]]]
    }
    
    // lock the first element
    let firstElement = self[0]
    
    // remove the locked element from the array
    var subArray = self
    subArray.removeFirst()
    
    var subPermutations = subArray.permutations()
    var results = [[Element]]()
    
    for i in 0..<subPermutations.count {
      for j in 0...subPermutations[i].count {
        
        var subResultArray = subPermutations[i]
        
        if j < subResultArray.count {
          subResultArray.insert(firstElement, atIndex: j)
        } else {
          subResultArray.append(firstElement)
        }
        
        results.append(subResultArray)
      }
    }
    
    return results
  }
}
