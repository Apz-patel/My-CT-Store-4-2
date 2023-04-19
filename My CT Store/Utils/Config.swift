//
//  Config.swift
//  My CT Store
//
//  Created by Ayush Patel on 29/03/23.
//

import Foundation
import UIKit
struct Config {
    static let appName = "My CT Store"
    static let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    static let appDateFormate = "dd MMM yyyyy"
    static let timeFormate = "hh:mm a"
    static let serverdateFormate = "yyyy-MM-dd"
    static let amountSign = "&"
    static let baseUrl: String = "https://myct.store/Mobile_Services/user/v2/index.php/"
    static let postUrl: String = "https://gorest.co.in/public/v2/comments"
    static let baseURLForImage: String = "https://myct.store/admin/uploads/"
    static let baseURLForCategories: String = "https://myct.store/admin/uploads/food_type/"
}
