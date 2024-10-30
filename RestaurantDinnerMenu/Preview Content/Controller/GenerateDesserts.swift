//
//  GenerateDesserts.swift
//  RestaurantDinnerMenu
//
//  Created by Far-iz Lengha on 29/10/2567 BE.
//

import Foundation

class GenerateDesserts{
    var titles = ["Panna Cotta","Ice Cream"]
    var images = ["panna-cotta","ice-cream"]
    var prices = [200.0,100.0]
    var ingredients = [["Sugar","Straw Berry","Blue Berry","Cyrup"],["Sugar","Straw Berry","Matcha","Cyrup"]]
    
    func generate() -> [Desserts]{
        let result:[Desserts] = [
            Desserts(title: titles[0], image: images[0], price: prices[0], ingredient: ingredients[0]),
            Desserts(title: titles[1], image: images[1], price: prices[1], ingredient: ingredients[1]),
        ]
        return result
    }
    
}
