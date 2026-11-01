//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by Arpit & Jinal on 2026-10-31.
//

import SwiftUI

struct MenuRowView: View {
    var item: Int
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            if let image = UIImage(named: "\(item)_sm") {
                Image(uiImage: image)
                    .clipShape(.circle)
                    .padding(.trailing, -25)
                    .padding(.leading, -15)
            } else{
                Image("surfboard_sm")
            }
            VStack(alignment: .leading) {
                Text("Margherita")
                RatingView(rating: 3)
            }
            Spacer()
        }
    }
}

#Preview {
    MenuRowView(item: 2)
}
