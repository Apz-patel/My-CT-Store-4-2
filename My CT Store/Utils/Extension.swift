//
//  Extension.swift
//  MyCT Store
//
//  Created by Winvesta on 28/03/23.
//

import Foundation
import UIKit
var passwordlength = 6
var phoneNumberRegx = "^+(?:[0-9] ?){6,14}[0-9]$"
var emailAddressRegx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"


extension String {
    
    var trimmed: String {
        return String(self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines))
    }
    var isValidEmailAddress : Bool {
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailAddressRegx)
        return emailTest.evaluate(with: self)
    }
    var isValidPhoneNumber : Bool {
        let phoneRegex = phoneNumberRegx
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
        return phoneTest.evaluate(with: self)
    }
    var isValidString : Bool { !(self.count == 0) }
    var isPwdLenth : Bool { self.count >= passwordlength }
    var isPasswordValid : Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[A-Z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{6,15}")
        return passwordTest.evaluate(with: self)
    }
    var digits: String {
        return components(separatedBy: CharacterSet.decimalDigits.inverted)
            .joined()
    }
    
    var length: Int { self.count }
    
    var firstCharacter: String? {
        return Array(self).map({String($0)}).first
    }
    
    var hasLetters: Bool {
        return (rangeOfCharacter(from: NSCharacterSet.letters, options: .numeric, range: nil) != nil)
    }
    
    var hasNumbers: Bool {
        return (rangeOfCharacter(from: NSCharacterSet.decimalDigits, options: .literal, range: nil) != nil)
    }
    var isAlphabetic: Bool {
        return  hasLetters && !hasNumbers
    }
    var isNumeric: Bool {
        return  !hasLetters && hasNumbers
    }
    
    var lastCharacter: String? {
        guard let last = Array(self).map({String($0)}).last else {
            return nil
        }
        return String(last)
    }
}

extension UIView {
    func setBorder(width: CGFloat, color: UIColor){
        layer.borderWidth = width
        layer.borderColor = color.cgColor
    }
   
    func setCorner(radius: CGFloat) {
        layer.masksToBounds = true
        layer.cornerRadius = radius
    }
}

extension UILabel {
    func setText(color: UIColor) {
        textColor = color
    }
}

extension UITableViewCell{
    static var identifier: String {
        return String(describing: self)
    }
}

extension UICollectionViewCell{
    static var identifier: String {
        return String(describing: self)
    }
}
