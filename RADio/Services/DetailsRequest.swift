//
//  DetailsRequest.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 26/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import Foundation

protocol DetailsRequest: Utilities {
    func getDetails(for request: URLRequest,
                    completion: ((Response<ArtistDetails>) -> Void)?)
}

extension DetailsRequest {
    func getDetails(for request: URLRequest,
                    completion: ((Response<ArtistDetails>) -> Void)?) {
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        let task = session.dataTask(with: request) { (responseData, response, responseError) in
            DispatchQueue.main.async {
                if let error = responseError {
                    completion?(.failure(error))
                } else if let jsonData = responseData {
                    print(jsonData)

                    let decoder = JSONDecoder()

                    do {
                        // Artist Details on being decoded from JSON
                        let artistDetails = try decoder.decode(ArtistDetails.self, from: jsonData)
                        print(artistDetails)
                        completion?(.success(artistDetails))
                    } catch {
                        completion?(.failure(error))
                    }
                } else {
                    let error = NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey : "Data was not retrieved from request"]) as Error
                    completion?(.failure(error))
                }
            }
        }
        task.resume()
    }

    func detailsRequest(artistName: String, mbid: String, searchMethod: String)->URLRequest {
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "ws.audioscrobbler.com"
        urlComponents.path = "/2.0/"

        var queryItems = [URLQueryItem(name: "method", value: "\(searchMethod).getinfo")]
        queryItems.append(URLQueryItem(name: "\(searchMethod)", value: "\(artistName)"))
        queryItems.append(URLQueryItem(name: "api_key", value: "\(api_key())")) //"1781e9f5a7307fbbc5a60d0545bf2bd8"))
        queryItems.append(URLQueryItem(name: "format", value: "json"))

        urlComponents.queryItems = queryItems

        guard let url = urlComponents.url else { fatalError("Could not create URL from components") }
        print("URL: \(url)")

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        return request
    }


}


