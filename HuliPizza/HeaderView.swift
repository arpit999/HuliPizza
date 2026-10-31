//
//  HeaderView.swift
//  HuliPizza
//
//  Created by Arpit & Jinal on 2026-10-31.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Image("surfBanner")
                .resizable()
                .scaledToFit()
            Text("Huli Pizza Company")
                .background()
        }
    }
}

#Preview {
    HeaderView()
}
