//
//  DeliveryOptionTableViewCell.swift
//  My CT Store
//
//  Created by Ayush Patel on 29/03/23.
//

import UIKit

protocol DeliveryOptionTableViewCellDelegate: AnyObject {
    func didSelectIndexOf(index: Int)
}

class DeliveryOptionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var deliverySegment: UISegmentedControl!
    weak var delegate: DeliveryOptionTableViewCellDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        deliverySegment.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white,
                                                NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12, weight: .medium)], for: .selected)
        deliverySegment.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black,NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12, weight: .regular)], for: .normal)
    }
    
    func set(selectedIndex: Int) {
        deliverySegment.selectedSegmentIndex = selectedIndex
    }
    @IBAction func deliverSegmentAction(_ sender: UISegmentedControl){
        delegate?.didSelectIndexOf(index: sender.selectedSegmentIndex)
    }
}
