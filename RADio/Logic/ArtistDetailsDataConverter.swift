//
//  ArtistDetailsDataConverter.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 26/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import Foundation

protocol ArtistDetailDataConverter {
    func convertArtistDetailsDataToModel(artistDetails: ArtistDetails) -> ArtistDetailModel
}

extension ArtistDetailDataConverter {
    func convertArtistDetailsDataToModel(artistDetails: ArtistDetails) -> ArtistDetailModel {
        return ArtistDetailModel(name: artistDetails.name, mbid: artistDetails.mbid, listeners: artistDetails.listeners, imageURL: artistDetails.imageUrl, bio: artistDetails.summary, playcount: artistDetails.playcount)
    }
}
