//
//  Artist.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 25/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import Foundation

struct Artist: Codable {
    let name: String?
    let listeners: String?
    let mbid: String?
    let url: URL?
    let streamable: String?
    let image: [Image]
    let stats: Stats?

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)

        do {
            url = try values.decode(URL.self, forKey: .url)
        } catch {
            url = nil
        }

        do {
            stats = try values.decode(Stats.self, forKey: .stats)
        } catch {
            stats = nil
        }

        do {
            listeners = try values.decode(String.self, forKey: .listeners)
        } catch {
            if let listenersParsed = stats?.listeners {
                listeners = listenersParsed
            } else {
                listeners = nil
            }
        }

        name = try values.decode(String.self, forKey: .name)
        image = try values.decode([Image].self, forKey: .image)
        mbid = try values.decode(String.self, forKey: .mbid)
        streamable = try values.decode(String.self, forKey: .streamable)
    }
}
