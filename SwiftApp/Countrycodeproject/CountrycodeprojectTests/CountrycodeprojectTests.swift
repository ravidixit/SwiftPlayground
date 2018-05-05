//
//  CountrycodeprojectTests.swift
//  CountrycodeprojectTests
//
//  Created by Ravi R Dixit on 5/4/18.
//  Copyright © 2018 Ravi R Dixit. All rights reserved.
//

import XCTest
@testable import Countrycodeproject

class CountrycodeprojectTests: XCTestCase {
    
    let _manager = DataManager()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testGetCountryRecords_CheckNil()
    {
        var _resultSet = [Result]();
        _manager.GetCountryCodes { (data) in
        _resultSet = data
        XCTAssertNil(_resultSet)
        }
    }
    
    func testGetCountryCodes_CheckIfAllNamesAreNotNil()
    {
        var _resultSet = [Result]();
        _manager.GetCountryCodes { (data) in
            _resultSet = data
            
            for element in _resultSet
            {
                XCTAssertNotNil(element.name)
                XCTAssertTrue((element.name?.count)! > 0)
                
            }
        }
    }
    
    func testGetCountryCodes_CheckIfAllISO2CodeAreNotNil()
    {
        var _resultSet = [Result]();
        _manager.GetCountryCodes { (data) in
            _resultSet = data
            for element in _resultSet
            {
                 XCTAssertNotNil(element.alpha2_code)
                XCTAssertTrue((element.alpha2_code?.count)! > 0)
               
            }
        }
    }
    
    func testGetCountryCodes_CheckIfListDoesNotHaveDuplicateRecords()
    {
        var _resultSet = [Result]();
        _manager.GetCountryCodes { (data) in
            _resultSet = data
            XCTAssertNil(_resultSet)
        }
    }
    
    func testGetCountryRecords_CheckCount() {
        var _resultSet = [Result]();
        _manager.GetCountryCodes { (data) in
            _resultSet = data
            XCTAssertTrue(_resultSet.count>0)
        }
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
