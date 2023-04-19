//
//  ApiEndPoint.swift
//  My CT Store
//
//  Created by Ayush Patel on 31/03/23.
//

import Foundation

enum ApiEndPoint {
    case getArea
    case getcity
    case homePage
    case getOrder
    
    var url: String {
        switch self {
        case .getArea: return "\(Config.baseUrl)/get_area"
        case .getcity: return "\(Config.baseUrl)/get_city"
        case .homePage: return "\(Config.baseUrl)/homepage"
        case .getOrder: return "\(Config.baseUrl)/get_order/8"
        }
    }
    
}
