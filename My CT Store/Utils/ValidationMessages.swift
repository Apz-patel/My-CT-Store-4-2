//
//  ValidationMessages.swift
//  My CT Store
//
//  Created by Ayush Patel on 29/03/23.
//

import Foundation
struct LoginValidation {
    static let allRequierdValidations = "Please enter all requierd validations"
    static let emptyEmail = "Please enter your emial"
    static let emptyPassword = "Please enter your password"
}

struct SignUpValidation {
    static let allRequierdValidations = "Please enter all requierd validations"
    static let emptyEmail = "Please enter your emial"
    static let emptyPassword = "Please enter your password"
    static let emptyUserName = "Please enter username"
    static let emptyDateOfBirth = "Please enter date of birth"
    static let shortPassword = "Password is too short"
    static let invalidUserName = "User name is not valid"
}

struct PasswordValidation {
    static let emptyTextField = "Enter your password and confirm password"
    static let emptyPassword = "Please enter your password"
    static let emptyConfirmPassword = "Please confirm your password"
    static let passwordIsNotSame = "Your confirm password is wrong"
    static let shortPassword = "Password is invalid"
}
