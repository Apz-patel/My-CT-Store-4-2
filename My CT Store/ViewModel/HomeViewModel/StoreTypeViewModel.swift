//
//  StoreTypeViewModel.swift
//  My CT Store
//
//  Created by Ayush Patel on 04/04/23.
//

import Foundation

struct StoreTypeViewModel: Decodable {
    private let storeType: StoreType
    
    init(storeType: StoreType) {
        self.storeType = storeType
    }
    func getId() -> String {  return storeType.id }
    func getType() -> String { return storeType.type }
    func getImage() -> String {
        return Config.baseURLForCategories + (storeType.image.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")
    }
}
