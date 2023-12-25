//
//  AssertYourselfTests.swift
//  AssertYourselfTests
//
//  Created by administrador on 25/12/23.
//

import XCTest
@testable import AssertYourself


struct SimpleStruct{
    let x: Int
    let y: Int
}

struct StructWithDescription: CustomStringConvertible {
    let x: Int
    let y: Int
    
    var description: String {"(\(x) , \(y))"}
}


final class AssertYourselfTests: XCTestCase {

    func test_fail(){
        let theAnswer = 42
        XCTFail("The answer to the Great Question is \(theAnswer)")
    }
    
    func text_avoidConditionalCode(){
        let success = false
        if !success {
            XCTFail()
        }
    }
    
    func test_assertTrue(){
        let success = false
        XCTAssertTrue(success)
    }
    
    func test_assertNil(){
        let optionalValue: Int? = 23
        XCTAssertNil(optionalValue)
    }
    
    func test_assertNil_withSimpleStrict(){
        let optionalValue: SimpleStruct? = SimpleStruct(x: 1, y: 2)
        XCTAssertNil(optionalValue)
    }
    
    func test_assertNil_withSelfDescribingType(){
        let optionalValue: StructWithDescription? = StructWithDescription(x: 1, y: 2)
        XCTAssertNil(optionalValue)
    }
    
    func test_assertEqual(){
        let actual = "Actual"
        XCTAssertEqual(actual, "expected")
    }
    
    func test_assertEqual_withOptionals(){
        let result: String? = "foo"
        XCTAssertEqual(result, "bar")
    }
    
    func test_floatingPointDanger(){
        let result = 0.1 + 0.2
        XCTAssertEqual(result, 0.3)
    }
    
    func test_floatingPointFixed(){
        let result = 0.1 + 0.2
        XCTAssertEqual(result, 0.3, accuracy: 0.00001)
    }

}

