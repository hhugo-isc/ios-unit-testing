//
//  CodeBasedViewControllerTests.swift
//  LoadViewControllersTestsTests
//
//  Created by administrador on 04/02/24.
//

import XCTest
@testable import LoadViewControllersTests

final class CodeBasedViewControllerTests: XCTestCase {

    func test_zero(){
        
    }
    
    func test_loading(){
        let sut = CodeBasedViewController(data: "Dummy")
        sut.loadViewIfNeeded()
        
    }

}
