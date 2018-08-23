//
//  APIRequests.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 12/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import Foundation

protocol APIRequests {
    func getSearchResults(for searchString: String, searchMethod: String, completion: ((Response<SearchResponse>) -> Void)?)
}

enum Response<Value> {
    case success(Value)
    case failure(Error)
}

extension APIRequests {
    func getSearchResults(for searchString: String, searchMethod: String, completion: ((Response<SearchResponse>) -> Void)?) {
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "ws.audioscrobbler.com"
        urlComponents.path = "/2.0/"

        var queryItems = [URLQueryItem(name: "method", value: "\(searchMethod).search")]
        queryItems.append(URLQueryItem(name: "\(searchMethod)", value: "\(searchString)"))
        queryItems.append(URLQueryItem(name: "api_key", value: "1781e9f5a7307fbbc5a60d0545bf2bd8"))
        queryItems.append(URLQueryItem(name: "format", value: "json"))

        urlComponents.queryItems = queryItems

        guard let url = urlComponents.url else { fatalError("Could not create URL from components") }
        print("URL: \(url)")
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"

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
                        // Search Results on being decoded from JSON
                        let searchResults = try decoder.decode(SearchResponse.self, from: jsonData)
                        print(searchResults)
                        completion?(.success(searchResults))
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
}


