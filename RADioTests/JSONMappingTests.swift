//
//  JSONMappingTests.swift
//  RADioTests
//
//  Created by Shweta Jagdish Mahajan (Digital) on 20/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import XCTest
@testable import RADio

class JSONMappingTests: XCTestCase {
    
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
    }

    func testArtistResults() {
        do {
                let artistResults = try JSONDecoder()
                    .decode(SearchResponse.self, from: (artistSearchResultsData)!)
                XCTAssertNotNil(artistResults, "SearchResults not nil")
                XCTAssertNotEqual(artistResults.results?.totalResults, "13655")
                XCTAssertNotEqual(artistResults.results?.artistMatches.artist.count, 30)
                XCTAssertNotEqual(artistResults.results?.artistMatches.artist[0].name, "YUI")
                XCTAssertNotEqual(artistResults.results?.artistMatches.artist[0].image[0].text?.absoluteString, "https://lastfm-img2.akamaized.net/i/u/34s/162f127d01844bb0b6891691b376955d.png")
            }
        catch {
            XCTFail("Error while parsing: \(error)")
        }
    }

    func testArtistDetails() {
        do {
            let artistDetails = try JSONDecoder()
                .decode(ArtistDetails.self, from: (artistDetailsData)!)

            print("Search Results: \(artistDetails)")
            XCTAssertNotNil(artistDetails, "SearchResults are nil")
            XCTAssertEqual(artistDetails.name, "Michael Bublé")
            XCTAssertEqual(artistDetails.mbid, "611700cf-27f0-4dc9-ae80-c513a767853e")
            XCTAssertEqual(artistDetails.listeners, "1747747")
            XCTAssertEqual(artistDetails.summary, summary)
            XCTAssertEqual(artistDetails.imageUrl?.absoluteString, "https://lastfm-img2.akamaized.net/i/u/300x300/0f233966a7ea4683872b10bd509126cc.png")
        }
        catch {
            XCTFail("Error while parsing: \(error)")
        }
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            do {
                let artistResults = try JSONDecoder()
                    .decode(SearchResponse.self, from: (artistSearchResultsData)!)

                print("Search Results: \(artistResults)")
            }
            catch {
                print("Error while parsing: \(error)")
            }
        }
    }
    
}
