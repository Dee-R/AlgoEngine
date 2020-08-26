//
//  FizzBuzzTest.swift
//  FizzBuzzTest
//
//  Created by Eddy R on 26/08/2020.
//  Copyright © 2020 Eddy R. All rights reserved.
//

import Foundation
import XCTest
@testable import AlgoEngine

class FizzBuzzTest: XCTestCase {
  
  let gameMock01 = GameMock()
  
  func test_startPrint_noValue() {
    let sut = GameEngine(valueLimitedTo: 0, gameMock: gameMock01)
    sut.start()
    XCTAssertEqual(gameMock01.message, "")
  }
  
  func test_startPrint_1() {
    let sut = GameEngine(valueLimitedTo: 1, gameMock: gameMock01)
    sut.start()
    XCTAssertEqual(gameMock01.message, "1")
  }
  func test_startPrint_2() {
    let sut = GameEngine(valueLimitedTo: 2, gameMock: gameMock01)
    sut.start()
    XCTAssertEqual(gameMock01.message, "12")
  }
  func test_startPrint_3() {
    let sut = GameEngine(valueLimitedTo: 3, gameMock: gameMock01)
    sut.start()
    XCTAssertEqual(gameMock01.message, "12Fizz")
  }
  func test_startPrint_4() {
    let sut = GameEngine(valueLimitedTo: 4, gameMock: gameMock01)
    sut.start()
    XCTAssertEqual(gameMock01.message, "12Fizz4")
  }
  func test_startPrint_5() {
    let sut = GameEngine(valueLimitedTo: 5, gameMock: gameMock01)
    sut.start()
    XCTAssertEqual(gameMock01.message, "12Fizz4Buzz")
  }
  func test_startPrint_6() {
    let sut = GameEngine(valueLimitedTo: 6, gameMock: gameMock01)
    sut.start()
    XCTAssertEqual(gameMock01.message, "12Fizz4BuzzFizz")
  }
  func test_startPrint_7() {
    let sut = GameEngine(valueLimitedTo: 7, gameMock: gameMock01)
    sut.start()
    XCTAssertEqual(gameMock01.message, "12Fizz4BuzzFizz7")
  }
  func test_startPrint_8() {
    let sut = GameEngine(valueLimitedTo: 8, gameMock: gameMock01)
    sut.start()
    XCTAssertEqual(gameMock01.message, "12Fizz4BuzzFizz78")
  }
  func test_startPrint_9() {
    let sut = GameEngine(valueLimitedTo: 9, gameMock: gameMock01)
    sut.start()
    XCTAssertEqual(gameMock01.message, "12Fizz4BuzzFizz78Fizz")
  }
  func test_startPrint_10() {
    let sut = GameEngine(valueLimitedTo: 10, gameMock: gameMock01)
    sut.start()
    XCTAssertEqual(gameMock01.message, "12Fizz4BuzzFizz78FizzBuzz")
  }
  func test_startPrint_12() {
    let sut = GameEngine(valueLimitedTo: 12, gameMock: gameMock01)
    sut.start()
    XCTAssertEqual(gameMock01.message, "12Fizz4BuzzFizz78FizzBuzz11Fizz")
  }
  func test_startPrint_15() {
    let sut = GameEngine(valueLimitedTo: 15, gameMock: gameMock01)
    sut.start()
    XCTAssertEqual(gameMock01.message, "12Fizz4BuzzFizz78FizzBuzz11Fizz1314FizzBuzz")
  }
  
  class GameMock: Game {
    var message: String = ""
    
    func printMessageWith(_ value: String) {
      self.message = value
      print(message)
    }
  }

}
