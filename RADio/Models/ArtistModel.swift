//
//  ArtistModel.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 25/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import Foundation

final class ArtistModel: NSObject {
    let artistName: String?
    let artistMBID: String?
    let artistListeners: String?
    let artistImageURL: URL?

    init(name: String?, mbid: String?, listeners: String?, imageURL: URL?) {
        artistName = name
        artistMBID = mbid
        artistListeners = listeners
        artistImageURL = imageURL
    }
}
