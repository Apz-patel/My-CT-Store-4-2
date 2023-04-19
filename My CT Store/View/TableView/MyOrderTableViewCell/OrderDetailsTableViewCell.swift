//
//  OrderDetailsTableViewCell.swift
//  UserApiCall
//
//  Created by Ayush Patel on 14/02/23.
//

import UIKit

class OrderDetailsTableViewCell: UITableViewCell {

    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var vendorName: UILabel!
    @IBOutlet weak var vImage: UIImageView!
    @IBOutlet weak var orderStatus: UILabel!
    @IBOutlet weak var dateTime: UILabel!
    @IBOutlet weak var orderId: UILabel!
    @IBOutlet weak var reOrderButton: UIButton!
    @IBOutlet weak var canselButton: UIButton!
    var cellIdentifier: String = "OrderDetailsTableViewCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
  
    
    func cellForRow(view: UIView) {
        switch orderStatus.text {
        case "Confirmed":
            view.backgroundColor = .green
        case "Pending":
            view.backgroundColor = .orange
        case "Dispatched":
            view.backgroundColor = .red
        case "cancelled":
            view.backgroundColor = .red
        default:
            view.backgroundColor = .white
        }
    }
}
