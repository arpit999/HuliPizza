//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Arpit & Jinal on 2026-10-31.
//

import SwiftUI

struct OrderRowView: View {
    var order: Int
    var quantity: Int = 1
    var itemPrice : Double = 19.90
    var body: some View {
        VStack(alignment: .leading) {
            Text("Your Order item \(order)")
        
            HStack (alignment: .firstTextBaseline) {
                Text(quantity, format:.number)
                Text("@")
                Text(itemPrice, format: .currency(code: "CAD"))
                Spacer()
                Text(itemPrice * Double(quantity), format: .currency(code: "CAD"))
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    OrderRowView(order: 1)
}
