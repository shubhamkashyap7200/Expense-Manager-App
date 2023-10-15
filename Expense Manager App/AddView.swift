//
//  AddView.swift
//  Expense Manager App
//
//  Created by Shubham on 10/15/23.
//

import SwiftUI

struct AddView: View {
    // MARK: Properties
    @ObservedObject var expenses: Expenses
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0
    let types = ["Business", "Personal"]
    @Environment(\.dismiss) var dismiss
    
    // MARK: Body
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)
                
                Picker("Type", selection: $type) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
                }
                
                TextField("Amount", value: $amount, format: .currency(code: CustomLocaleCurrent.currency ?? "USD"))
                    .keyboardType(.decimalPad)
            }
            
            .navigationTitle("Add new expense")
            .toolbar {
                Button("Save") {
                    let item = ExpenseItem(name: name, type: type, amount: amount)
                    expenses.items.append(item)
                    dismiss()
                }
                .bold()
                .disabled(self.name.isEmpty || self.amount < 0)
            }
        }
    }
}

#Preview {
    AddView(expenses: Expenses())
}
