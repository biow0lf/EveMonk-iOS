//
//  API+ApiKeys.swift
//  tracker
//
//  Created by Igor Zubkov on 31.01.17.
//  Copyright © 2017 Igor Zubkov. All rights reserved.
//

import SwiftyJSON
import TRON

extension API {
    class ApiKeys {
        static func read(id: Int) -> APIRequest<ApiKey, MyAppError> {
            return tron.request("api_keys/\(id)")
        }
    }
}
