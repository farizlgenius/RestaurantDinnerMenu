//
//  DinnerMenu.swift
//  RestaurantDinnerMenu
//
//  Created by Far-iz Lengha on 29/10/2567 BE.
//

import Foundation

class DinnerMenu : Menu {
    var id = UUID()
    
    var title: String
    
    var image: String
    
    var price: Double
    
    var ingredient: [String]
    
    init(title: String, image: String, price: Double, ingredient: [String]) {
        self.title = title
        self.image = image
        self.price = price
        self.ingredient = ingredient
    }
}
