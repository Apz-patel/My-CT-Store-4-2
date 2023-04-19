//
//  HomeViewModel.swift
//  My CT Store
//
//  Created by Ayush Patel on 02/04/23.
//

import Foundation
import Alamofire
import UIKit

class HomeViewModel {
    private(set) var arrCategories: [StoreTypeViewModel] = []
    private(set) var arrBanner: [BannerViewModel] = []
    private(set) var arrVendor: [VendorViewModel] = []
    private(set) var vendorCount: Int = 0
    private(set) var selectedCategoryIndex: Int = 0
    private(set) var selectedDeliveryIndex: Int = 0
    private let apiManager: ApiManager = ApiManager()
    
    
    func fetchDetalis(completion: @escaping(Result<(), Error>) -> Void) {
        let parameter: Parameters = [ "area_id" : "4",
                                      "city_id" : "1",
                                      "custid" : "",
                                      "store_type" : selectedCategoryIndex == 0 ? "" : arrCategories[selectedCategoryIndex].getId(),
                                      "type" : selectedDeliveryIndex == 0 ? "takeaway" : "delivery"]
        
        apiManager.request(with: ApiEndPoint.homePage.url,method: .post, parameter: parameter) { response in
            switch response {
            case .success(let data):
                do {
                    let homePageAPIResponse = try JSONDecoder().decode(HomeAPIResponse.self, from: data)
                    self.arrCategories = homePageAPIResponse.arrStoreType.map { StoreTypeViewModel(storeType: $0) }
                    self.arrBanner = homePageAPIResponse.arrBanner.map { BannerViewModel(banner: $0) }
                    self.arrVendor = homePageAPIResponse.arrVendor.map { VendorViewModel(vendor: $0) }
                    self.vendorCount = homePageAPIResponse.numberOfStores
                    print(self.arrCategories)
                    completion(.success(()))
                } catch {
                    completion(.failure(ApiError.invalidResponse))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
extension HomeViewModel {
    
    func numOfSection() -> Int {
        if arrCategories.count > 0, arrBanner.count > 0, arrVendor.count > 0{
            return 5
        }
        return 0
    }
    
    func numOfRowInsection() -> Int { return 1 }
}

extension HomeViewModel {
    
    func updateIndex(selectedCategoryIndex: Int) {
        self.selectedCategoryIndex = selectedCategoryIndex
    }
    
    func updateIndexOf(selectedDeliveryIndex: Int) {
        self.selectedDeliveryIndex = selectedDeliveryIndex
    }
}

enum HomePageTabelSection {
    case address
    case category(arrCategories: [StoreTypeViewModel])
    case banner(arrBanners: [BannerViewModel])
    case deliveryOption(name: String)
    case vendor(arrVendors: [VendorViewModel])
}

