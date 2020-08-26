//
//  FizzBuzzTest.swift
//  AlgoEngine
//
//  Created by Eddy R on 26/08/2020.
//  Copyright © 2020 Eddy R. All rights reserved.
//
/*
 1
 2
 3 , 6, 9, 12 ...= Fizz
 4
 5 , 10 = Buzz
 15, = FizzBuzz
 **/

import Foundation
import OSLog


protocol Game {
  func printMessageWith(_ value: String)
}



class GameEngine {
  let game: Game
  let valueLimitedTo: Int
  var messageToPrint: String = ""
  
  init(valueLimitedTo: Int,gameMock: Game ) {
    self.game = gameMock
    self.valueLimitedTo = valueLimitedTo
  }
  
  func start() {
    for i in 0...valueLimitedTo {
      if i == 0 {
      } else if i % 15 == 0 {
        messageToPrint.append("FizzBuzz")
      } else if i % 3 == 0 {
        messageToPrint.append("Fizz")
      } else if i % 5 == 0 {
        messageToPrint.append("Buzz")
      }
      else {
        messageToPrint.append(String(i))
      }
    }
    game.printMessageWith(messageToPrint)
  }
}
