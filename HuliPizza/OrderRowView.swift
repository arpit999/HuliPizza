//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Arpit & Jinal on 2026-10-31.
//

import SwiftUI

struct OrderRowView: View {
    var order: Int
    var body: some View {
        HStack {
            Text("Your Order item \(order):")
            Spacer()
            Text(19.9, format: .currency(code: "CAD"))
        }
    }
}

#Preview {
    OrderRowView(order: 1)
}
