//
//  Constants.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import UIKit

let screenHeight: CGFloat = UIScreen.main.bounds.size.height
let screenWidth: CGFloat = UIScreen.main.bounds.size.width

struct Constants {
    // API Headers
    struct APIHeaders {
        static var kContentType = "Content-Type"
        static var contentTypeValue = "application/json"
    }
}

struct StatusFail: Codable {
    let status: String?
    let error: FailError?
}

struct FailError: Codable {
    let message: FailErrorMessage?
}

struct FailErrorMessage: Codable {
    let email: String?
    let username: String?
    let token: String?
    let message: String?
}
