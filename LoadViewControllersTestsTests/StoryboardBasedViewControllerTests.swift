//
//  StoryboardBasedViewControllerTests.swift
//  LoadViewControllersTestsTests
//
//  Created by administrador on 04/02/24.
//

import XCTest
@testable import LoadViewControllersTests

final class StoryboardBasedViewControllerTests: XCTestCase {

    func test_zero(){
        
    }
    
    func test_loading(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let sut: StoryboardBasedViewController = sb.instantiateViewController(identifier: String(describing: StoryboardBasedViewController.self))
        
        sut.loadViewIfNeeded()
        XCTAssertNotNil(sut.label)
        
    }

}
