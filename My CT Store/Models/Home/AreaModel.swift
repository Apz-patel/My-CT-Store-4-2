//
//  AreaModel.swift
//  My CT Store
//
//  Created by Ayush Patel on 31/03/23.
//

import Foundation

struct Area: Decodable {
    
    var city: String
    var stats: String
    var dateAndTime: String
    enum CodingKeys: String, CodingKey{
        case city, stats
        case dateAndTime = "date_time"
    }
}
