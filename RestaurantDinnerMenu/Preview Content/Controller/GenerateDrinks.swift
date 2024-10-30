//
//  GenerateDrinks.swift
//  RestaurantDinnerMenu
//
//  Created by Far-iz Lengha on 29/10/2567 BE.
//

import Foundation

class GenerateDrinks{
    var titles = ["Milk Tea","Coffee","Orange Juice","Lemon Soda","Black Tea","Ice Tea"]
    var images = ["milk-tea","coffee","orange-juice","lemon-soda","black-tea","ice-tea"]
    var prices = [200.0,100.0,300.0,400.0,300.0]
    var ingredients = [["Ice","Sugar","Buble","Milk","Tea"],["Lemon","Ice","Soda"],["Coffee","Milk","Sugar"],["Sugar","Orange","Milk"],["Ice","Tea","Sugar"]]
    
    func generate() -> [Drinks]{
        let result:[Drinks] = [
            Drinks(title: titles[Int.random(in: 0...4)], image: images[Int.random(in: 0...4)], price: prices[Int.random(in: 0...4)], ingredient: ingredients[Int.random(in: 0...4)]),
            Drinks(title: titles[Int.random(in: 0...4)], image: images[Int.random(in: 0...4)], price: prices[Int.random(in: 0...4)], ingredient: ingredients[Int.random(in: 0...4)]),
            Drinks(title: titles[Int.random(in: 0...4)], image: images[Int.random(in: 0...4)], price: prices[Int.random(in: 0...4)], ingredient: ingredients[Int.random(in: 0...4)]),
            Drinks(title: titles[Int.random(in: 0...4)], image: images[Int.random(in: 0...4)], price: prices[Int.random(in: 0...4)], ingredient: ingredients[Int.random(in: 0...4)]),
            Drinks(title: titles[Int.random(in: 0...4)], image: images[Int.random(in: 0...4)], price: prices[Int.random(in: 0...4)], ingredient: ingredients[Int.random(in: 0...4)]),
            Drinks(title: titles[Int.random(in: 0...4)], image: images[Int.random(in: 0...4)], price: prices[Int.random(in: 0...4)], ingredient: ingredients[Int.random(in: 0...4)]),
            Drinks(title: titles[Int.random(in: 0...4)], image: images[Int.random(in: 0...4)], price: prices[Int.random(in: 0...4)], ingredient: ingredients[Int.random(in: 0...4)])
        ]
        return result
    }
    
}
