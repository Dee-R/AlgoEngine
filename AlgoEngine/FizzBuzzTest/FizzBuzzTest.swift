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
  
//  func test_LimitTo_0() {
//    let gameMock = GameMock()
//    let sut = GameEngine(valueLimitedTo: 0, game: gameMock)
//
//    sut.start()
//    XCTAssertEqual(gameMock.message, "")
//  }
//
//
//
//  // -----
//  class GameMock: Game {
//    var message: String = ""
//    func limitedValue(to: Int) {
//
//    }
//  }
  
  
  func test_startPrint_noValue() {
    let gameMock01 = GameMock()
    let sut = GameEngine(valueLimitedTo: 0, gameMock: gameMock01)
    sut.start()
    XCTAssertEqual(gameMock01.message, "")
  }
  
  func test_startPrint_1() {
    let gameMock01 = GameMock()
    let sut = GameEngine(valueLimitedTo: 1, gameMock: gameMock01)
    sut.start()
    XCTAssertEqual(gameMock01.message, "1")
  }
  
  
  class GameMock: Game {
    var message: String = ""
    
    func printMessageWith(_ value: String) {
      self.message = value
    }
  }

}
