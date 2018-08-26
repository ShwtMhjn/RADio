//
//  Details.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 24/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import Foundation

struct ArtistDetails: Codable {
    let name: String?
    let mbid: String?
    let imageUrl: URL?
    let listeners: String?
    let playcount: String?
    let summary: String?

    private enum RootKeys: String, CodingKey {
        case artist
    }

    private enum ContainerKeys: String, CodingKey {
        case image
        case bio
        case stats
        case name
        case mbid
    }

    private enum SomeKeys:  String, CodingKey {
        case imageUrl = "#text"
        case listeners
        case playcount
        case summary
    }
}

extension ArtistDetails {
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: RootKeys.self)
        let artistValues = try values.nestedContainer(keyedBy: ContainerKeys.self, forKey: .artist)
        let bio = try artistValues.nestedContainer(keyedBy: SomeKeys.self, forKey: .bio)

        let artist = try values.decode(Artist.self, forKey: .artist)

        name = artist.name
        mbid = artist.mbid
        imageUrl = artist.image[4].text
        listeners = artist.stats?.listeners
        playcount = artist.stats?.playcount
        summary = try bio.decode(String.self, forKey: .summary)
    }
}

