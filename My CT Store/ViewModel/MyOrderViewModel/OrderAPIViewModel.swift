//
//  OrderAPIViewModel.swift
//  My CT Store
//
//  Created by Ayush Patel on 10/04/23.


import Foundation
struct OrderAPIViewModel {
    private let orderAPIData: OrderAPIData
    
    init(orderAPIData: OrderAPIData) {
        self.orderAPIData = orderAPIData
    }
    
    func getOrderId() -> String { return orderAPIData.orderId }
    func getVendorName() -> String { return orderAPIData.vendorName }
    func getTotalPrice() -> String { return orderAPIData.totalPrice }
    func getdateAndTime() -> String { return orderAPIData.dateAndTime }
    func getStats() -> String { return orderAPIData.stats }
    func getImage() -> String {
        return Config.baseURLForImage + (orderAPIData.image.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")
    }
}
