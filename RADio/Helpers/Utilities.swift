//
//  Utilities.swift
//  RADio
//
//  Created by Shweta Jagdish Mahajan (Digital) on 27/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import Foundation

protocol Utilities {
    func api_key() -> String
}

extension Utilities {
    func api_key() -> String {
        if let path = Bundle.main.path(forResource: "Configuration", ofType: "plist") {
            let dictionary = NSDictionary(contentsOfFile: path)
            if let dict = dictionary {
                return(dict["api_key"] as! String)
            }
        }
        return ""
    }
}
