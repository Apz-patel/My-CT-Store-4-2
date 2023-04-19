//
//  CategoriesTableViewCell.swift
//  My CT Store
//
//  Created by Ayush Patel on 29/03/23.
//

import UIKit

protocol CategoriesTableViewCellDelegate: AnyObject {
    func didSelectCategories(at index: Int)
}

class CategoriesTableViewCell: UITableViewCell {

    @IBOutlet weak var viewMoreButton: UIButton!
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    var selectedCategoryIndex: Int = 0
    weak var delegate: CategoriesTableViewCellDelegate?
    var arrCategories: [StoreTypeViewModel] = []
    override func awakeFromNib() {
        super.awakeFromNib()
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
    }
    
    func set(arrCategories: [StoreTypeViewModel], selectedCategoryIndex: Int) {
        self.arrCategories = arrCategories
        self.selectedCategoryIndex = selectedCategoryIndex
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        categoryCollectionView.reloadData()
    }
}

extension CategoriesTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {  return 1 }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrCategories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CategoryCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        cell.backgroundColor = AppColor.primaryColorRed
        if selectedCategoryIndex == indexPath.row {
            cell.backgroundColor = AppColor.primaryColorRed
            cell.nameLabel.textColor = .white
            cell.nameLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
            cell.setBorder(width: 1.5, color: .clear)
        } else {
            cell.backgroundColor = .white
            cell.nameLabel.textColor = AppColor.primaryColorRed
            cell.nameLabel.font = UIFont.systemFont(ofSize: 10, weight: .regular)
            cell.setBorder(width: 1.5, color: AppColor.primaryColorRed!)
        }
        let category: StoreTypeViewModel = arrCategories[indexPath.row]
        cell.nameLabel.text = category.getType()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)  {
         delegate?.didSelectCategories(at: indexPath.row)
    }
}

extension CategoriesTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 38)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
 
}
