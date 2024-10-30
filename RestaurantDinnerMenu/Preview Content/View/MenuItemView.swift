//
//  MenuItem.swift
//  RestaurantDinnerMenu
//
//  Created by Far-iz Lengha on 29/10/2567 BE.
//

import SwiftUI

struct MenuItemView: View {
    @Binding var food:DinnerMenu
    var body: some View {
        VStack{
            Image(food.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
            Text(food.title)
        }
        .padding()
    }
}

#Preview {
    MenuItemView(food: .constant(Foods(title: "Test", image: "beef-burger", price: 200.0, ingredient: ["1"])))
}
