//
//  ContentView.swift
//  menu
//
//  Created by Perly Dahan on 1/15/25.
//

import SwiftUI

struct MenuView: View {
    
    var menuItems:[MenuItem] = []
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    MenuView()
}
