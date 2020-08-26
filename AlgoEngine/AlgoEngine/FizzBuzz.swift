//
//  FizzBuzzTest.swift
//  AlgoEngine
//
//  Created by Eddy R on 26/08/2020.
//  Copyright © 2020 Eddy R. All rights reserved.
//

import Foundation
import OSLog


protocol Game {
  func printMessageWith(_ value: String)
}

class GameEngine {
  let game: Game
  let valueLimitedTo: Int
  
  init(valueLimitedTo: Int,gameMock: Game ) {
    self.game = gameMock
    self.valueLimitedTo = valueLimitedTo
  }
  
  func start() {
    if valueLimitedTo != 0 {
      game.printMessageWith("1")
    }
  }
}
