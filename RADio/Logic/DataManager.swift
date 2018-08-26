//
//  DataManager.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 25/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import Foundation
import Reachability

enum ArtistResponse {
    case success([Artist]?)
    case failure(Error)
}

enum ArtistDetailResponse {
    case success(ArtistDetails)
    case failure(Error)
}

final class DataManager: ArtistDataConverter, ResultsDataConverter, ArtistDetailDataConverter, APIRequests, DetailsRequest {

    //MARK: Artist
    func convertResultsToModelArray<T>(results: Array<T>) -> [ArtistModel]? {
        var modelsArray = [ArtistModel]()
        for artist in results {
            modelsArray.append(convertArtistDataToModel(artist: artist as! Artist))
        }
        return modelsArray
    }

    func loadArtistModels(searchString: String,
                          searchMethod: String) {
        let searchCategory: String = self.getSearchMethod(scope:searchMethod)

        self.getArtistSearchResults(searchString: searchString, searchMethod: searchCategory) { (artistResponse) in
            switch artistResponse {
            case .success(let artists):
                let artistModels = self.convertResultsToModelArray(results: artists!)!
                ResultsPresenter().presentResults(results: artistModels)
            case .failure(let error):
                fatalError("error: \(error.localizedDescription)")
            }
        }
    }

    func getArtistSearchResults(searchString: String,
                                searchMethod: String,
                                completion: ((ArtistResponse) -> Void)?) {
        let request = self.searchRequest(searchString: searchString, searchMethod: searchMethod)
        var searchResults: [Artist]?
        self.getSearchResults(for: request) { (searchResponse) in
            switch searchResponse {
            case .success(let response):
                searchResults = response.results?.artistMatches.artist
                completion?(.success(searchResults))
            case .failure(let error):
                fatalError("error: \(error.localizedDescription)")
            }
        }
    }

    func pickImageSize(reachability: Reachability) -> Int {
        switch reachability.connection {
        case .cellular:
            return 3
        case .wifi:
            return 4
        default:
            return 3
        }
    }

    func getSearchMethod(scope: String) -> String {
        var searchCategory: String
        switch scope {
        case "All":
            searchCategory = "all"
        case "Artists":
            searchCategory = "artist"
        case "Albums":
            searchCategory = "album"
        case "Tracks":
            searchCategory = "track"
        default:
            searchCategory = "all"
        }
        print("Search Category: \(searchCategory)")
        return searchCategory
    }

    //MARK: Details
    func loadArtistDetails(artistName: String,
                           mbid: String,
                           searchMethod: String) {

        let searchCategory: String = self.getSearchMethod(scope:searchMethod)

        self.getArtistDetails(artistName: artistName, searchMethod: searchCategory, mbid: mbid) { (detailResponse) in
            switch detailResponse {
            case .success(let artistDetails):
                let details = self.convertArtistDetailsDataToModel(artistDetails: artistDetails)
                ResultsPresenter().presentDetails(details: details)
            case .failure(let error):
                fatalError("error: \(error.localizedDescription)")
            }
        }
    }

    func getArtistDetails(artistName: String,
                                searchMethod: String,
                                mbid: String,
                                completion: ((ArtistDetailResponse) -> Void)?) {
        let request = self.detailsRequest(artistName: artistName, mbid: mbid, searchMethod: searchMethod)
        self.getDetails(for: request) { (artistDetailsResponse) in
            var artistDetails: ArtistDetails
            switch artistDetailsResponse {
            case .success(let response):
                artistDetails = response
                completion?(.success(artistDetails))
            case .failure(let error):
                fatalError("error: \(error.localizedDescription)")
            }
        }
    }
}


