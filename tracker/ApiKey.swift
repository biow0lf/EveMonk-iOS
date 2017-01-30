//
//  ApiKey.swift
//  tracker
//
//  Created by Igor Zubkov on 31.01.17.
//  Copyright © 2017 Igor Zubkov. All rights reserved.
//

import SwiftyJSON
import TRON

class ApiKey: JSONDecodable {
    let id: Int?
    let key_id: Int?
    let v_code: String?
    let created_at: Date?
    let updated_at: Date?

    required init(json: JSON) throws {
        id = json["id"].intValue
        key_id = json["key_id"].intValue
        v_code = json["v_code"].stringValue
        created_at = json["created_at"].stringValue.dateFromISO8601
        updated_at = json["updated_at"].stringValue.dateFromISO8601
    }
}
