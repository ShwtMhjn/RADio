//
//  ResultsDataConverter.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 25/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import Foundation

protocol ResultsDataConverter {
    func convertResultsToModelArray<T>(results: Array<T>)->[ArtistModel]?
}

extension ArtistModel: ResultsDataConverter, ArtistDataConverter {
    func convertResultsToModelArray<T>(results: Array<T>) -> [ArtistModel]? {
        var artistModels: [ArtistModel]?
        for artist in results {
            artistModels?.append(convertArtistDataToModel(artist:artist as! Artist))
        }
        return artistModels
    }
}
