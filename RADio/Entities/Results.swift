//
//  Results.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 12/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import Foundation

struct Results: Codable {

    struct SearchQuery: Codable {
        let text: String?
        let role: String?
        let searchTerms: String?
        let startPage: String?

        private enum CodingKeys: String, CodingKey {
            case text = "#text"
            case role
            case searchTerms
            case startPage
        }
    }
    let searchQuery: SearchQuery
    let totalResults: String?
    let startIndex: String?
    let itemsPerPage: String?
    let artistMatches: ArtistMatches

    private enum CodingKeys: String, CodingKey {
        case searchQuery = "opensearch:Query"
        case totalResults = "opensearch:totalResults"
        case startIndex = "opensearch:startIndex"
        case itemsPerPage = "opensearch:itemsPerPage"
        case artistMatches = "artistmatches"
    }
}


