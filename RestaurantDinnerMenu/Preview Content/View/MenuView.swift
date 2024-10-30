//
//  ContentView.swift
//  RestaurantDinnerMenu
//
//  Created by Far-iz Lengha on 28/10/2567 BE.
//

import SwiftUI

struct MenuView: View {
    @State var isFoodSelected:Bool = true
    @State var isDrinkSelected:Bool = true
    @State var isDessertSelected:Bool = true
    @State var isShowSheet:Bool = false
    @State var f:[DinnerMenu] = GenerateFoods().generate()
    @State var d:[DinnerMenu] = GenerateDrinks().generate()
    @State var de:[DinnerMenu] = GenerateDesserts().generate()
    let column = [
        GridItem(.adaptive(minimum: 170))
    ]
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading){
                    if isFoodSelected == true {
                        Text("Foods")
                            .font(.title2)
                        LazyVGrid(columns: column, spacing: 20){
                            ForEach($f, content: {
                                doo in NavigationLink(destination: MenuDetailView(food: doo), label: {
                                    MenuItemView(food: doo)
                                })
                            })
                        }
                    }
                    
                    if isDrinkSelected == true {
                        Text("Drinks")
                            .font(.title2)
                        LazyVGrid(columns: column, spacing: 20){
                            ForEach($d, content: {
                                doo in NavigationLink(destination: MenuDetailView(food: doo), label: {
                                    MenuItemView(food: doo)
                          
                                })
                            })
                        }
                    }
                    
                    if isDessertSelected == true {
                        Text("Desserts")
                            .font(.title2)
                        LazyVGrid(columns: column, spacing: 20){
                            ForEach($de, content: {
                                doo in NavigationLink(destination: MenuDetailView(food: doo), label: {
                                    MenuItemView(food: doo)
              
                                })
                            })
                        }
                    }
                }.frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .topLeading
                  )
                .padding()
            }
            // Add Menu Bar for Setting
            .toolbar(content: {
                Button(action: {
                    self.isShowSheet.toggle()
                }, label: {
                    Image(systemName: "slider.horizontal.2.square.on.square")
                })
            })
            // Add Sheet for show view
            .sheet(isPresented: $isShowSheet, content: {
                MenuOptionView(isFoodSelected: $isFoodSelected, isDrinkSelected: $isDrinkSelected, isDessertSelected: $isDessertSelected)
            })
            .navigationTitle("Menu")
        }
    }
}

#Preview {
    MenuView()
}
