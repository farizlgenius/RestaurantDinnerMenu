//
//  MenuOptionView.swift
//  RestaurantDinnerMenu
//
//  Created by Far-iz Lengha on 28/10/2567 BE.
//

import SwiftUI

struct MenuOptionView: View {
    @Binding var isFoodSelected:Bool
    @Binding var isDrinkSelected:Bool
    @Binding var isDessertSelected:Bool
    @State var sortSelection:String?
    let sortBy = ["Popular","Prices"]
    var body: some View {
        NavigationView{
            VStack{
                List{
                    Section(content: {
                        Toggle(isOn: $isFoodSelected, label: {
                            Label("Food",systemImage: "fork.knife")
                        })
                        .tint(.red)
                        Toggle(isOn: $isDrinkSelected, label: {
                            Label("Drink",systemImage: "cup.and.heat.waves.fill")
                        })
                        .tint(.red)
                        Toggle(isOn: $isDessertSelected, label: {
                            Label("Dessert",systemImage: "birthday.cake.fill")
                            
                        })
                        .tint(.red)
                    }, header: {
                        Text("SELECTED CATEGORIES")
                    })
                    Section(content: {
                        ForEach(sortBy,id:\.self){
                            item in SelectionRow(title: item, selectedItem: $sortSelection)
                        }
                    }, header: {
                        Text("SORT BY")
                    })
                }
            }.navigationTitle("Filter")
        }
    }
}

#Preview {
    MenuOptionView(isFoodSelected: .constant(true), isDrinkSelected: .constant(true), isDessertSelected: .constant(true))
}
