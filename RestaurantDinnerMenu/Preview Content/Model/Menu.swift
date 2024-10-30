//
//  Menu.swift
//  RestaurantDinnerMenu
//
//  Created by Far-iz Lengha on 29/10/2567 BE.
//

import Foundation

protocol Menu : Identifiable {
    
    var id:UUID { get set }
    
    var title:String { get set }
    
    var image:String { get set }
    
    var price:Double { get set }
    
    var ingredient:[String] { get set }
}
