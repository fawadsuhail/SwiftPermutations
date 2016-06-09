//
//  SwiftPermutationsTests.swift
//  SwiftPermutationsTests
//
//  Created by Fawad Suhail on 6/9/16.
//  Copyright © 2016 Fawad Suhail. All rights reserved.
//

import XCTest
import Foundation

@testable import SwiftPermutations

class SwiftPermutationsTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testPermutation() {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    let array = [1, 2, 4, 5]
    
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    let permutations = appDelegate.permutations(array)
    
    XCTAssert(permutations.count == factorial(array.count))
  }
  
  func factorial(n: Int) -> Int {
    
    if n == 0 {
      return 1
    } else {
      return n * factorial(n - 1)
    }
    
  }
  
}
