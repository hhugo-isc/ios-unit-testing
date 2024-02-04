//
//  XIBBasedViewController.swift
//  LoadViewControllersTestsTests
//
//  Created by administrador on 04/02/24.
//

import XCTest
@testable import LoadViewControllersTests
final class XIBBasedViewControllerTests: XCTestCase {
    
    func test_zero(){
        
    }
    
    func test_loading(){
        let sut = XIBBasedViewController()
        
        sut.loadViewIfNeeded()
        XCTAssertNotNil(sut.label)
    }

}
