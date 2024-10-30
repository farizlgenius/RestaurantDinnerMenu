//
//  GenerateFoods.swift
//  RestaurantDinnerMenu
//
//  Created by Far-iz Lengha on 29/10/2567 BE.
//

import Foundation

class GenerateFoods{
    var titles = ["Beef Burger","Beef Tacos","Butter Chicken","Chicken Pasta","Spaghetti Carbonara"]
    var images = ["beef-burger","beef-tacos","butter-chicken","chicken-pasta","spaghetti-carbonara"]
    var prices = [200.0,100.0,300.0,400.0,300.0]
    var ingredients = [["Bun","Chicken","Butter"],["Tomato","Beef","Pasta"],["Spaghetti","Beef","Onion"],["Garlic","Egg","Chicken","Butter"],["Olive Oil","Beef","Bean"]]
    
    func generate() -> [Foods]{
        let result:[Foods] = [
            Foods(title: titles[Int.random(in: 0...4)], image: images[Int.random(in: 0...4)], price: prices[Int.random(in: 0...4)], ingredient: ingredients[Int.random(in: 0...4)]),
            Foods(title: titles[Int.random(in: 0...4)], image: images[Int.random(in: 0...4)], price: prices[Int.random(in: 0...4)], ingredient: ingredients[Int.random(in: 0...4)]),
            Foods(title: titles[Int.random(in: 0...4)], image: images[Int.random(in: 0...4)], price: prices[Int.random(in: 0...4)], ingredient: ingredients[Int.random(in: 0...4)]),
            Foods(title: titles[Int.random(in: 0...4)], image: images[Int.random(in: 0...4)], price: prices[Int.random(in: 0...4)], ingredient: ingredients[Int.random(in: 0...4)]),
            Foods(title: titles[Int.random(in: 0...4)], image: images[Int.random(in: 0...4)], price: prices[Int.random(in: 0...4)], ingredient: ingredients[Int.random(in: 0...4)]),
            Foods(title: titles[Int.random(in: 0...4)], image: images[Int.random(in: 0...4)], price: prices[Int.random(in: 0...4)], ingredient: ingredients[Int.random(in: 0...4)]),
            Foods(title: titles[Int.random(in: 0...4)], image: images[Int.random(in: 0...4)], price: prices[Int.random(in: 0...4)], ingredient: ingredients[Int.random(in: 0...4)])
        ]
        return result
    }
    
}


