//
//  MyOrderAPIResponse.swift
//  My CT Store
//
//  Created by Ayush Patel on 10/04/23.
//

import Foundation

struct MyOrderAPIResponse: Decodable {
    var error: Bool
    var data: [OrderAPIData]
    
//    enum CodindKeys: String, CodingKey {
//        case error
//        case APIData = "data"
//    }
}
