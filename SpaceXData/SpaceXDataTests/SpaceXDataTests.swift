//
//  SpaceXDataTests.swift
//  SpaceXDataTests
//
//  Created by Robert McLean on 12/28/22.
//

import XCTest
@testable import SpaceXData

class SpaceXDataTests: XCTestCase {
    
    var objectViewModel: ViewModel?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        objectViewModel = ViewModel()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
            objectViewModel = nil
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
    
    func testGetNumberOfRows(){
        let results = objectViewModel?.getNumberOfRow()
        XCTAssertEqual(results, 0)
        let rocketModel = Rockets(id: "Boeing", name: "Boeing", details: "Launched in 2002", date_utc: "January 1, 2002", upcoming: true, success: true, rocket: "Boeing")
    }
    
    
    func testGetRocketFor(){
        let rocket1 = objectViewModel?.getRocketFor(index: -1)
        XCTAssertNil(rocket1)
        let rocket2 = objectViewModel?.getRocketFor(index: 10)
        XCTAssertNil(rocket2)
    }
    
    
    
    

}
