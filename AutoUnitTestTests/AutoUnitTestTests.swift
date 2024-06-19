//
//  AutoUnitTestTests.swift
//  AutoUnitTestTests
//
//  Created by masazumi oeda on 2024/06/17.
//

import XCTest
@testable import AutoUnitTest

final class AutoUnitTestTests: XCTestCase {
  
  var target1: Sample1!
  
  // 各テストが始まる前に実行されるSetup()(throwsなし)
  override func setUp() {
    super.setUp()
    
    print("setUp")
    // テストごとにCalculatorインスタンスを初期化
    self.target1 = Sample1()
  }
  
  // 各テストが始まる前に実行されるtearDown()(throwsなし)
  override func tearDown() {
    print("tearDown")
  }
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    //    print("setUpWithError")
  }
  
  // 各テストが始まる前に実行されるthrows付きSetup()
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    //    print("tearDownWithError")
  }
  
  // テストサンプル
  func testExample() throws {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    // Any test you write for XCTest can be annotated as throws and async.
    // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
    // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
  }
  
  // パフォ＝マンステストサンプル
  func testPerformanceExample() throws {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
    }
  }
  
  func testFun1() {
    XCTAssertEqual(self.target1.fun1(arg1: 1), true, "fun1 function did not return expected value")
    XCTAssertEqual(self.target1.fun1(arg1: 0), false, "fun1 function did not return expected value")
  }
  
  func testFun2() {
    self.target1.fun2(arg1: 0)
    XCTAssertEqual(self.target1.val1, false, "fun2 function did not return expected value")
    self.target1.fun2(arg1: 1)
    XCTAssertEqual(self.target1.val1, true, "fun2 function did not return expected value")
  }
  
  func testFun3() {
    XCTAssertEqual(self.target1.fun3(arg1: 1), true, "fun3 function did not return expected value")
    XCTAssertEqual(self.target1.fun3(arg1: 0), false, "fun3 function did not return expected value")
  }
  func testFun4() {
    XCTAssertEqual(self.target1.fun4(arg1: 0), true, "fun3 function did not return expected value")
  }
  func testFun5() {
    XCTAssertEqual(self.target1.fun5(arg1: 1), true, "fun3 function did not return expected value")
  }
}
