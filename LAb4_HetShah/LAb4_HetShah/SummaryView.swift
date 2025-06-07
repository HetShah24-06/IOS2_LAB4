//
//  SummaryView.swift
//  LAb4_HetShah
//
//  Created by  Het Shah on 2025-06-06.
//

import SwiftUI

import SwiftUI

struct SummaryView: View {
    var totalPrice: Double
    let taxPercent = 0.13

    var taxAmount: Double {
        totalPrice * taxPercent
    }

    var grandTotal: Double {
        totalPrice + taxAmount
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            Text("Subtotal: $\(totalPrice, specifier: "%.2f")")
            Text("Tax (13%): $\(taxAmount, specifier: "%.2f")")
            Text("Total Amount: $\(grandTotal, specifier: "%.2f")")
                .font(.headline)
                .padding(.top, 8)

            Spacer()
        }
        .padding()
        .navigationTitle("Bill Summary")
    }
}
