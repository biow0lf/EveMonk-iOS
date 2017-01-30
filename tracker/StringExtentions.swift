//
//  StringExtentions.swift
//  tracker
//
//  Created by Igor Zubkov on 31.01.17.
//  Copyright © 2017 Igor Zubkov. All rights reserved.
//

import Foundation

extension String {
    var dateFromISO8601: Date? {
        return ISO8601DateFormatter().date(from: self)
    }
}
