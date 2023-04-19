
//  OrderAPIData.swift
//  My CT Store
//  Created by Ayush Patel on 10/04/23.

import Foundation
struct OrderAPIData: Decodable {
    var orderId: String
    var totalPrice: String
    var dateAndTime: String
    var stats: String
    var vendorName: String
    var image: String
    
    enum CodingKeys: String, CodingKey {
        case stats
        case orderId = "order_id"
        case totalPrice = "tprice"
        case dateAndTime = "date_time"
        case vendorName = "vname"
        case image = "vimage"
    }
}
