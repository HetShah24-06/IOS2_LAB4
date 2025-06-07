//
//  ContentView.swift
//  LAb4_HetShah
//
//  Created by  Het Shah on 2025-06-06.
//

import SwiftUI


struct ContentView: View {
    @State private var inputText = ""
    @State private var showAlert = false
    @State private var isNavigating = false
    @State private var enteredQuantity = 0

    var body: some View {
        NavigationView {
            VStack(spacing: 24) {
                Text("Quantity")
                    .font(.headline)

                TextField("Enter quantity", text: $inputText)
                    .keyboardType(.numberPad)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)

                Button(action: {
                    if let value = Int(inputText), value > 0 {
                        enteredQuantity = value
                        isNavigating = true
                    } else {
                        showAlert = true
                    }
                }) {
                    Text("Next")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.cyan)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }

                NavigationLink(
                    destination: PriceEstimatorView(itemCount: enteredQuantity),
                    isActive: $isNavigating
                ) {
                    EmptyView()
                }

                Spacer()
            }
            .padding()
            .navigationTitle("Het Shah")
            .alert("Invalid Quantity", isPresented: $showAlert) {
                Button("OK", role: .cancel) { }
            } message: {
                Text("Please enter a number greater than 0.")
            }
        }
    }
}

#Preview {
    ContentView()
}
