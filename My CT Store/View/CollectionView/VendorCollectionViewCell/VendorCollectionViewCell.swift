//
//  VendorCollectionViewCell.swift
//  My CT Store
//
//  Created by Ayush Patel on 29/03/23.
//

import UIKit
import Cosmos

class VendorCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var cosmosView: CosmosView!
    
    @IBOutlet weak var minOrderLabel: UILabel!
    @IBOutlet weak var vendorNameLabel: UILabel!
    @IBOutlet weak var deliveryLabel: UILabel!
   
    @IBOutlet weak var vendorImageview: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
