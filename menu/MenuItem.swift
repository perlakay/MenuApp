//
//  MenuItem.swift
//  menu
//
//  Created by Perly Dahan on 1/20/25.
//

import Foundation

struct MenuItem: Identifiable { //informing that it conforms to a protocol  //becomes a custom data type
    
    var id: UUID = UUID() //creates a random id which is assigned to each instance of the MenuItem type 
    var name:String
    var price:String
    var imageName:String
    
}
