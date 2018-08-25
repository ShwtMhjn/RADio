//
//  Image.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 25/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import Foundation

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
