//
//  PriceEstimatorView.swift
//  LAb4_HetShah
//
//  Created by Het Shah on 2025-06-06.
//

import SwiftUI

struct PriceEstimatorView: View {
    var itemCount: Int
    let itemPrice = 12.0

    var totalCost: Double {
        Double(itemCount) * itemPrice
    }

    var body: some View {
        VStack(spacing: 22) {
            Text("Quantity Entered: \(itemCount)")
                .font(.subheadline)

            Text("Total Cost: $\(totalCost, specifier: "%.2f")")
                .font(.title3)
                .fontWeight(.medium)

            NavigationLink(destination: SummaryView(totalPrice: totalCost)) {
                Text("Proceed to Summary")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.mint)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Cost Estimator")
    }
}
