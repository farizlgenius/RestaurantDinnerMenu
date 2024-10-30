//
//  SelectionRow.swift
//  RestaurantDinnerMenu
//
//  Created by Far-iz Lengha on 28/10/2567 BE.
//

import SwiftUI

struct SelectionRow: View {
    
    let title:String
    @Binding var selectedItem:String?
    
    var body: some View {
        HStack{
            Text(title)
            Spacer()
            if title == selectedItem {
                Image(systemName: "checkmark")
            }
        }.onTapGesture {
            self.selectedItem = self.title
        }
    }
}

#Preview {
    SelectionRow(title: "Noname", selectedItem: .constant("Noname"))
}
