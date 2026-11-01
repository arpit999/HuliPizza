//
//  OrderView.swift
//  HuliPizza
//
//  Created by Arpit & Jinal on 2026-10-31.
//

import SwiftUI

struct OrderView: View {
    var orders: [Int]
    var body: some View {
        
        VStack {
            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
                Label {
                    Text(59.99, format: .currency(code: "CAD"))
                }
                icon: {
                    Image(systemName: orders.isEmpty ? "cart": "cart.circle.fill")
                }
            }
            .padding()
            .background(.ultraThinMaterial)
            
            ScrollView {
                ForEach(orders, id: \.self) { order in
                    OrderRowView(order: order)
                        .padding(4)
                        .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 10))
                        .shadow(radius: 10)
                        .padding([.bottom], 5)
                        .padding([.horizontal], 7)
                }
            }
        }
        .background(Color("Surf"))
    }
}

#Preview {
    OrderView(orders: [1,2,3,4,5,6,9,10,11,12,13,14,15,16,17,18,19,20])
}
