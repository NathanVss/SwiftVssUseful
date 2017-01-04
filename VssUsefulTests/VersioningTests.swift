//
//  VersioningTests.swift
//  VssUseful
//
//  Created by Nathan Vasse on 22/12/2016.
//  Copyright © 2016 Nathan Vasse. All rights reserved.
//

import XCTest
@testable import VssUseful

class VersioningTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        XCTAssert(VssVersioning.toInt("3.2.1") == 300020001)
        XCTAssert(VssVersioning.toInt("0.0.1") == 1)
        XCTAssert(VssVersioning.toInt("0.1.1") == 10001)
        XCTAssert(VssVersioning.toInt("1.1.1") == 100010001)
        XCTAssert(VssVersioning.toInt("4.0.0") == 400000000)
        XCTAssert(VssVersioning.toInt("4.0.3") == 400000003)
        XCTAssert(VssVersioning.toInt("4.0.3-rc.1") == 400000003)
        XCTAssert(VssVersioning.toInt("4.0.3nimportequoi") == 400000003)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
