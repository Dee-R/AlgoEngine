//
//  Multiplesof3and5Test.swift
//  Multiplesof3and5Test
//
//  Created by Eddy R on 27/08/2020.
//  Copyright © 2020 Eddy R. All rights reserved.
//

// If we list all the natural numbers below 10 that are multiples of 3 or 5,
// we get 3, 5, 6 and 9. The sum of these multiples is 23.
// Find the sum of all the multiples of 3 or 5 below 1000.

// list all number under 10 with only
// multiple of 3
// multiple of 5
// check each number under xLimit
import XCTest

class Multiplesof3and5Test: XCTestCase {
    var sut: Multiplesof3and5! = nil
    override func setUp() {
        super.setUp()
        sut = Multiplesof3and5()
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
    }
    
    func test_print_MultipleOf3_returnEmptyArray() {
        sut.generateWith(element:2)
        sut.start()
        XCTAssertEqual(sut.resultList, [])
        XCTAssertEqual(sut.sumList, 0)
    }
    func test_print_MultipleOf3_return3() {
        sut.generateWith(element:4)
        sut.start()
        XCTAssertEqual(sut.resultList, [3])
        XCTAssertEqual(sut.sumList, 3)
    }
    func test_print_MultipleOf3And5_return3_5_6() {
        assertMultiple(upto: 6, expected: [3, 5, 6])
        XCTAssertEqual(sut.sumList, 14)
    }
    
    private func assertMultiple(upto:Int, expected: [Int], line: UInt = #line) {
        sut.generateWith(element:upto)
        sut.start()
        XCTAssertEqual(sut.resultList, expected, "error line : \(line)")
    }
}
