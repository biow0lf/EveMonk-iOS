//
//  API.swift
//  tracker
//
//  Created by Igor Zubkov on 30.01.17.
//  Copyright © 2017 Igor Zubkov. All rights reserved.
//

import SwiftyJSON
import TRON

enum API {
    static let tron = TRON(baseURL: "http://localhost:3000/api")
}

class MyAppError : JSONDecodable {
    var errors: [String:[String]] = [:]

    required init(json: JSON) {
        if let dictionary = json["errors"].dictionary {
            for (key,value) in dictionary {
                errors[key] = value.arrayValue.map( { return $0.stringValue } )
            }
        }
    }
}
