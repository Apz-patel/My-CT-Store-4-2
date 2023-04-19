//
//  Vendor.swift
//  My CT Store
//
//  Created by Ayush Patel on 04/04/23.
//

import Foundation

struct Vendor: Decodable {
    var id: String
    var name: String
    var image: String
    var area: String
    var address: String
    var deliveryTime: String
    var deliveryTimeIn: String
    var minimumOrder: String
    var deliveryCharges: String
    var discount: String
    var rating: String
    var stats: String
    var isOpen: String
    
    enum CodingKeys: String, CodingKey {
        case id, name, image, area, address, discount, rating, stats
        case deliveryTime = "delivery_time"
        case deliveryTimeIn = "delivery_time_in"
        case minimumOrder = "min_order"
        case deliveryCharges = "delivery_charges"
        case isOpen = "isopen"
    }
}
