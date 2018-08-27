//
//  RADioTests.swift
//  RADioTests
//
//  Created by Shweta Jagdish Mahajan (Digital) on 11/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import XCTest
@testable import RADio

class RADioTests: XCTestCase, APIRequests {
    var filedJsonData: Data?

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        if let path = Bundle.main.path(forResource: "ArtistResultsJSONs", ofType: "json") {
            do {
                filedJsonData = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                print(filedJsonData ?? "Could not find a value")
            }
            catch {
                print(error)
            }
        }
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testSearchURLRequest() {
        let searchRequestCopy = searchRequest(searchString: "Michael", searchMethod: "artist", pageNumber: 1)
        XCTAssertEqual(searchRequestCopy.url?.absoluteString, "https://ws.audioscrobbler.com/2.0/?method=artist.search&artist=Michael&page=1&api_key=1781e9f5a7307fbbc5a60d0545bf2bd8&format=json")
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
