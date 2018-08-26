//
//  ArtistDetailModel.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 26/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import Foundation

final class ArtistDetailModel: NSObject {
    let artistName: String?
    let artistMBID: String?
    let artistListeners: String?
    let artistImageURL: URL?

    let artistBio: String?
    let artistPlaycount: String?
    
    init(name: String?, mbid: String?, listeners: String?, imageURL: URL?, bio: String?, playcount: String?) {
        artistName = name
        artistMBID = mbid
        artistListeners = listeners
        artistImageURL = imageURL
        artistBio = bio
        artistPlaycount = playcount
    }
}
