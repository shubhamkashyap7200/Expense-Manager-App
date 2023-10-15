//
//  Expense.swift
//  Expense Manager App
//
//  Created by Shubham on 10/15/23.
//

import Foundation


struct ExpenseItem : Identifiable, Codable{
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
