//
//  Results.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 12/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import Foundation

struct ArtistMatches: Codable {
    let artist: [Artist]
}


struct Image: Codable {
    let text: URL?
    let size: String?

    private enum CodingKeys: String, CodingKey {
        case text = "#text"
        case size
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        do {
            text = try values.decode(URL.self, forKey: .text)
        } catch {
            text = nil
        }
        size = try values.decode(String.self, forKey: .size)
    }
}

struct Artist: Codable {
    let name: String?
    let listeners: String?
    let mbid: String?
    let url: URL?
    let streamable: String?
    let image: [Image]

    private enum CodingKeys: String, CodingKey {
        case name
        case listeners
        case image
        case mbid
        case url
        case streamable
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        do {
            url = try values.decode(URL.self, forKey: .url)
        } catch {
            url = nil
        }
        name = try values.decode(String.self, forKey: .name)
        listeners = try values.decode(String.self, forKey: .listeners)
        image = try values.decode([Image].self, forKey: .image)
        mbid = try values.decode(String.self, forKey: .mbid)
        streamable = try values.decode(String.self, forKey: .streamable)
    }
}

struct SearchResponse: Codable {
    let results: Results?
}

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

struct FailableDecodable<Base : Decodable> : Decodable {

    let base: Base?

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.base = try? container.decode(Base.self)
    }
}


