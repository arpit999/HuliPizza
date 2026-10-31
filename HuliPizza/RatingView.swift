//
//  RatingView.swift
//  HuliPizza
//
//  Created by Arpit & Jinal on 2026-10-31.
//

import SwiftUI

struct RatingView: View {
    var rating:Int
    var body: some View {
        HStack {
            ForEach(1...6, id: \.self) { circle in
                Image(systemName: (circle <= rating) ? "fork.knife.circle.fill" : "circle")
            }
            
        }
    }
}

#Preview {
    RatingView(rating:3)
}
