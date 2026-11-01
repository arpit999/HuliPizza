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
            HStack {
                Text("Margherita Huli Pizza")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)
                    .padding(.leading)
                
                if let image = UIImage(named: "0_lg") {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .padding([.top,.bottom], 5)
                        .cornerRadius(15)
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(.degrees(180))
                }
            }
            .background(.linearGradient(colors:[Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
            .shadow(color:.teal, radius: 5, x: 8, y: 8)
            
            VStack(alignment: .leading) {
                
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sed diam eros. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis in aliquam ligula. Etiam finibus lorem et nunc commodo viverra. Fusce tincidunt ornare orci id dignissim. Etiam dui dolor, volutpat condimentum scelerisque in, condimentum.")
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
        }.background(.thinMaterial, )
    }
}

#Preview {
    MenuItemView()
}
