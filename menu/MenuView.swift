//
//  ContentView.swift
//  menu
//
//  Created by Perly Dahan on 1/15/25.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]() //variable inside a structure is called a property, @State is a property wrapper.
    var dataService = DataService() //creating an instance of DataService to use
    var body: some View {
        
        List(menuItems) { item in
            
            MenuListRow(item: item)
            
            
            
        }
        .listStyle(.plain)
        .onAppear {
                //call data
            menuItems = dataService.getData()
        }
            
            
            
        }
        
        
        
    
}

#Preview {
    MenuView()
}
