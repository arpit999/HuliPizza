//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by Arpit & Jinal on 2026-10-31.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            if let image = UIImage(named: "0_lg") {
              Image(uiImage: image)
            } else {
                Image("surfboard_lg")
            }
            Text("Margherita")
            Text("Description")
        }
    }
}

#Preview {
    MenuItemView()
}
