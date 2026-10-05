//
//  ContentView.swift
//  HuliPizza
//
//  Created by Arpit & Jinal on 2026-10-05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Huli Pizza Company")
            Image("surfBanner")
                .resizable()
                .scaledToFit()
            Text("Order Pizza")
                .font(.title)
            Spacer()
        }
        .padding()
    }
}
    
#Preview {
    ContentView()
}
