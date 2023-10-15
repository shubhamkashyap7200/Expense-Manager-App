//
//  ContentView.swift
//  Expense Manager App
//
//  Created by Shubham on 10/15/23.
//

import SwiftUI

struct User: Codable {
    let firstName: String
    let secondName: String
}

struct FirstView: View {
    // MARK: Propeties
    @State private var user = User(firstName: "Shubham", secondName: "Kashyap")
    
    // MARK: Body
    var body: some View {
        VStack {
            Button("Save User") {
                let encoder = JSONEncoder()
                
                if let data = try? encoder.encode(user) {
                    UserDefaults.standard.setValue(data, forKey: "customUser")
                }
            }
            
            Text("\(user.firstName) \(user.secondName)")
        }
        
    }
    
    // MARK: Methods
}

#Preview {
    FirstView()
}



// MARK: App storage - storing data in swift ui property wrapper called AppStorage
//
//struct FirstView: View {
//    // MARK: Propeties
//    @AppStorage("countOfTap") private var savedTapCount: Int = 0
//    
//    // MARK: Body
//    var body: some View {
//        Button("Ben \(savedTapCount)") {
//            savedTapCount += 1
//        }
//        
//    }
//    
//    // MARK: Methods
//}
//
//#Preview {
//    FirstView()
//}




// MARK: Deleting the rows in foreach in list and showing edit and done button

//struct FirstView: View {
//    // MARK: Propeties
//    @State private var numbers = [Int]()
//    @State private var currentNumber = 1
//    
//    // MARK: Body
//    var body: some View {
//        NavigationStack {
//            VStack {
//                List {
//                    ForEach(numbers, id: \.self) {
//                        Text("Row value is : \($0)")
//                    }
//                    .onDelete(perform: removeRows)
//                }
//                
//                Button("Add Number") {
//                    numbers.append(currentNumber)
//                    currentNumber += 1
//                }
//            }
//            .toolbar {
//                EditButton()
//            }
//        }
//    }
//    
//    // MARK: Methods
//    private func removeRows(at offsets: IndexSet) {
//        numbers.remove(atOffsets: offsets)
//    }
//}
//
//#Preview {
//    FirstView()
//}



// MARK: Navigation in swift ui using modal sheets
//
//struct FirstView: View {
//    @State private var isShowingModalSheet = false
//    var body: some View {
//        ZStack {
//            Color.blue
//            VStack {
//                Text("First View")
//                    .font(.largeTitle.weight(.heavy))
//
//                Button("Show next view") {
//                    isShowingModalSheet.toggle()
//                }
//                .padding()
//                .background(Color.black)
//                .clipShape(RoundedRectangle(cornerRadius: 8.0))
//                .sheet(isPresented: $isShowingModalSheet) {
//                    SecondView(name: "Kashyap")
//                }
//            }
//            .foregroundStyle(.white)
//
//        }
//        .ignoresSafeArea()
//    }
//}
//
//#Preview {
//    FirstView()
//}





// MARK: Important Code for sharing data across multiple views
//class User: ObservableObject {
//    @Published var firstName = "Bilbo"
//    @Published var lastName = "Baggins"
//}
//
//struct ContentView: View {
//    @StateObject var user = User()
//
//    var body: some View {
//        VStack {
//            Text("Your name is \(user.firstName) \(user.lastName).")
//
//            TextField("First name", text: $user.firstName)
//            TextField("Last name", text: $user.lastName)
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}
