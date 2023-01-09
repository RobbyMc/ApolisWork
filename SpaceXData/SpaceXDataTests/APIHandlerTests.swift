//
//  APIHandlerTests.swift
//  SpaceXDataTests
//
//  Created by Robert McLean on 1/9/23.
//

import XCTest
@testable import SpaceXData

class APIHandlerTests: XCTestCase {
    var apiHandler: APIHandler?
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        apiHandler = APIHandler()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        apiHandler = nil
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testGetRockets(){
        apiHandler?.getRockets()
        
    }
    
    

}
