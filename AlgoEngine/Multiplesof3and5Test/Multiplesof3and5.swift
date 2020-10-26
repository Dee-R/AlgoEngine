//
//  Multiplesof3and5.swift
//  Multiplesof3and5Test
//
//  Created by Eddy R on 26/10/2020.
//  Copyright © 2020 Eddy R. All rights reserved.
//

import Foundation

class Multiplesof3and5 {
    private var numberOfElement: Int = 0
    var resultList: [Int] = []
    var sumList: Int = 0
    
    
    func generateWith(element:Int) {
        numberOfElement = element
    }
    
    func start() {
        for i in 1...numberOfElement {
            if i % 3 == 0 || i % 5 == 0{
                resultList.append(i)
            }
        }
        sumList = resultList.reduce(0, +)
    }
}
