//
//  HomeAPIResponse.swift
//  My CT Store
//
//  Created by Ayush Patel on 04/04/23.
//

import Foundation

struct HomeAPIResponse: Decodable {
    var error: Bool
    var arrStoreType: [StoreType]
    var arrVendor: [Vendor]
    var arrBanner: [Banner]
    var numberOfStores: Int
    
    enum CodingKeys: String, CodingKey {
        case error
        case arrStoreType = "store_type"
        case arrVendor = "data"
        case arrBanner = "banner"
        case numberOfStores = "num_stores"
    }
}
