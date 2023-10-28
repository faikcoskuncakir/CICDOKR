//
//  CICDOKRTests.swift
//  CICDOKRTests
//
//  Created by Cakir, Faik on 28.10.2023.
//

import XCTest
@testable import CICDOKR

final class CICDOKRTests: XCTestCase {
    
    var sut: Arithmetic!

    override func setUpWithError() throws {
        sut = Arithmetic()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testAddNumbers() {
        //Given
        let number1 = 5
        let number2 = 8
        
        //When
        let result = sut.add(num1: number1, num2: number2)
        
        //Then
        XCTAssertEqual(result, 13)
    }
    
}
