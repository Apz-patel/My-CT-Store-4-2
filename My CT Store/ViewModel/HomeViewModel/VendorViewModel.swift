//
//  VendorViewModel.swift
//  My CT Store
//
//  Created by Ayush Patel on 04/04/23.
//

import Foundation

struct VendorViewModel: Decodable {
    private let vendor: Vendor
    
    init(vendor: Vendor) {
        self.vendor = vendor
    }
    func getId() -> String { vendor.id }
    func getName() -> String { vendor.name }
    func getImage() -> String {
        return Config.baseURLForImage + (vendor.image.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")
    }
    func isOpen() -> Bool { return vendor.isOpen == "open" }
    func getMinimumOrder() -> String {
        return "Min. Order: $\(vendor.minimumOrder)"
    }
    func getDeliveryCharges() -> String {
        return String(format: "Delivery Fees: $%f", Float(vendor.deliveryCharges) ?? 0)
    }
    func getRating() -> Float { return Float(vendor.rating) ?? 0}
    
}
