//
//  MenuDetail.swift
//  RestaurantDinnerMenu
//
//  Created by Far-iz Lengha on 29/10/2567 BE.
//

import SwiftUI

struct MenuDetailView: View {
    @Binding var food:DinnerMenu
    var body: some View {
        VStack{
            Image(food.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(100)
                .padding(20)
                
            Text(food.title)
                .font(.title)
                .fontWeight(.bold)
            Text("price : " + String(format: "%.2f", food.price) + " $")
            Text("Ingredients : ")
            HStack{
                ForEach(food.ingredient,id:\.self){
                    ing in Text(ing)
                }
            }
        }
        .navigationTitle(food.title)
    }
}

#Preview {
    MenuDetailView(food: .constant(Foods(title: "Beef", image: "beef-burger", price: 200.0, ingredient: ["1","2"])))
}
