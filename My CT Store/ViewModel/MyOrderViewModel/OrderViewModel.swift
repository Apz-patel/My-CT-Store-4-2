//
//  OrderViewModel.swift
//  My CT Store
//
//  Created by Ayush Patel on 10/04/23.
import Foundation
import Alamofire
import UIKit


class OrderViewModel {
    private(set) var arrOrderDetails: [OrderAPIViewModel] = []
    private let apiManager: ApiManager = ApiManager()
    
    func fetchDetalisOfOrders(completion: @escaping(Result<(), Error>) -> Void) {
        apiManager.request(with: ApiEndPoint.getOrder.url, method: .get) { response in
            switch response {
            case .success(let data):
                do{
                    let orderData = try JSONDecoder().decode(MyOrderAPIResponse.self, from: data)
                    self.arrOrderDetails =  orderData.data.map { OrderAPIViewModel(orderAPIData: $0)}
                    print(self.arrOrderDetails)
                    completion(.success(()))
                } catch {
                   print(error)
                    completion(.failure(ApiError.jsonNotParshed))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    
    func numOfSection() -> Int { return arrOrderDetails.count }
    func numOfRow() -> Int { return 1 }
    
   
}
