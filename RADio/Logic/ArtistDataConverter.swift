//
//  ArtistDataConverter.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 25/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import Foundation

protocol ArtistDataConverter {
    func convertArtistDataToModel(artist: Artist) -> ArtistModel
}

extension ArtistDataConverter {
    func convertArtistDataToModel(artist: Artist) -> ArtistModel {
        let artistModel = ArtistModel(name: artist.name, mbid: artist.mbid, listeners: artist.listeners, imageURL: artist.image[4].text)
        return artistModel
    }
}
