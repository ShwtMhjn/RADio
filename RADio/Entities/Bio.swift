//
//  Bio.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 25/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import Foundation

struct Bio: Codable {
    let links: Links?
    struct Links: Codable {
        let published: String
        let summary: String
        let content: String
    }
}
