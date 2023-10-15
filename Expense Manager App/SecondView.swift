//
//  SecondView.swift
//  Expense Manager App
//
//  Created by Shubham on 10/15/23.
//

import SwiftUI

struct SecondView: View {
    let name: String
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.red
            VStack {
                Text("Second View :: Name - \(name)")
                    .font(.largeTitle.weight(.heavy))
                    .foregroundStyle(.white)
                
                Button("Show next view") {
                    dismiss()
                }
                .padding()
                .background(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 8.0))

            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SecondView(name: "Shubham")
}
