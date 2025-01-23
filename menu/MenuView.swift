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
            
            HStack{
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:50)
                    .cornerRadius(10)
                
                Text(item.name)
                    .bold()
                
                Spacer()
                
                Text("$" + item.price)
                
                
            }
            .listRowSeparator(.hidden)
            .listRowBackground(
                Color(.brown)
                    .opacity(0.1)
                
            )
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
