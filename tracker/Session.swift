//
//  Session.swift
//  tracker
//
//  Created by Igor Zubkov on 31.01.17.
//  Copyright © 2017 Igor Zubkov. All rights reserved.
//

import SwiftyJSON
import TRON

class Session: JSONDecodable {
    let id: Int?
    let token: String?
    let created_at: Date?
    let updated_at: Date?

    required init(json: JSON) throws {
        id = json["id"].intValue
        token = json["token"].stringValue
        created_at = json["created_at"].stringValue.dateFromISO8601
        updated_at = json["updated_at"].stringValue.dateFromISO8601
    }
}
