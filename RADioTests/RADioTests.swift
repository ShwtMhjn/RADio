//
//  RADioTests.swift
//  RADioTests
//
//  Created by Shweta Jagdish Mahajan (Digital) on 11/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import XCTest
@testable import RADio

class RADioTests: XCTestCase {
//    let jsonData = """
//{
//        "results": {
//            "opensearch:Query": {
//                "#text": "",
//                "role": "request",
//                "searchTerms": "Yui",
//                "startPage": "1"
//            },
//            "opensearch:totalResults": "13655",
//            "opensearch:startIndex": "0",
//            "opensearch:itemsPerPage": "30",
//            "artistmatches": {
//                "artist": [
//                {
//                "name": "YUI",
//                "listeners": "182882",
//                "mbid": "f8a17bc3-82ba-4e40-bc8f-7d2445d9e818",
//                "url": "https://www.last.fm/music/YUI",
//                "streamable": "0",
//                "image": [
//                {
//                "#text": "https://lastfm-img2.akamaized.net/i/u/34s/162f127d01844bb0b6891691b376955d.png",
//                "size": "small"
//                },
//                {
//                "#text": "https://lastfm-img2.akamaized.net/i/u/64s/162f127d01844bb0b6891691b376955d.png",
//                "size": "medium"
//                },
//                {
//                "#text": "https://lastfm-img2.akamaized.net/i/u/174s/162f127d01844bb0b6891691b376955d.png",
//                "size": "large"
//                },
//                {
//                "#text": "https://lastfm-img2.akamaized.net/i/u/300x300/162f127d01844bb0b6891691b376955d.png",
//                "size": "extralarge"
//                },
//                {
//                "#text": "https://lastfm-img2.akamaized.net/i/u/300x300/162f127d01844bb0b6891691b376955d.png",
//                "size": "mega"
//                }
//                ]
//                },
//                {
//                "name": "Yukihiro Fukutomi",
//                "listeners": "23720",
//                "mbid": "5ae575a5-3c2d-4cbb-9fe5-be806d5946ae",
//                "url": "https://www.last.fm/music/Yukihiro+Fukutomi",
//                "streamable": "0",
//                "image": [
//                {
//                "#text": "https://lastfm-img2.akamaized.net/i/u/34s/b6080784f1c04191bd8ee09138ddb883.png",
//                "size": "small"
//                },
//                {
//                "#text": "https://lastfm-img2.akamaized.net/i/u/64s/b6080784f1c04191bd8ee09138ddb883.png",
//                "size": "medium"
//                },
//                {
//                "#text": "https://lastfm-img2.akamaized.net/i/u/174s/b6080784f1c04191bd8ee09138ddb883.png",
//                "size": "large"
//                },
//                {
//                "#text": "https://lastfm-img2.akamaized.net/i/u/300x300/b6080784f1c04191bd8ee09138ddb883.png",
//                "size": "extralarge"
//                },
//                {
//                "#text": "https://lastfm-img2.akamaized.net/i/u/300x300/b6080784f1c04191bd8ee09138ddb883.png",
//                "size": "mega"
//                }
//                ]
//                }
//                ]
//            },
//            "@attr": {
//                "for": "Yui"
//            }
//        }
//    }
//""".data(using: .utf8)!

    var filedJsonData: Data?

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        if let path = Bundle.main.path(forResource: "ArtistResultsJSONs", ofType: "json") {
            do {
                filedJsonData = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                print(filedJsonData)
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

        do {
            // We would use Post.self for JSON representing a single Post
            // object, and [Post].self for JSON representing an array of
            // Post objects
            if let json = filedJsonData {
            let searchResults = try JSONDecoder()
                .decode(SearchResponse.self, from: (json))

                print("Search Results: \(searchResults)")
            XCTAssertNotNil(searchResults, "SearchResults not parsed")
                }
            }
        catch {
            print("Error while parsing: \(error)")

            XCTAssert(true, "Incorrect Parsing")
        }
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
