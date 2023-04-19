//
//  Banner.swift
//  My CT Store
//
//  Created by Ayush Patel on 04/04/23.
//

import Foundation

struct Banner: Decodable {
    var vendorId: Int
    var status: String
    var businessName: String
    var bannerId: Int
    var bannerImage: String
    
    enum CodingKeys: String, CodingKey {
        case vendorId = "v_id"
        case businessName = "business_name"
        case bannerId = "bid"
        case bannerImage = "filename"
        case status
    }
}
