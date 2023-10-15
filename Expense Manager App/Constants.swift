//
//  Constants.swift
//  Expense Manager App
//
//  Created by Shubham on 10/15/23.
//

import Foundation

struct UserDefaultsKeys {
    static var itemsKey = "itemsKey"
}

struct CustomLocaleCurrent {
    static var currency = Locale.current.currency?.identifier
}
