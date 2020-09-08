//
//  ContentView.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/3/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var cartItems: Dictionary<Int, MenuItem> = [:]
    @State var selectedCategory = "Pizza"
  
    let categories = Category.loadCategories()
    
    var selectedCategoryMenuItems = String() {
        didSet {
                selectedCategoryMenuItems = selectedCategory
        }
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Categories")
                    .fontWeight(.bold)
                    .font(.custom("Avenir", size: 20))
                    .padding(.leading, 20)
                
                CategoryView(selectedCategory: $selectedCategory, categories: categories)
                
                Text("Menu")
                .fontWeight(.bold)
                .font(.custom("Avenir", size: 20))
                .padding(.leading, 20)
                
                MenuList(menuItems: MenuItem.loadmenu(category: selectedCategory))
            }
            .navigationBarTitle(Text("Order Up"), displayMode: .inline)
            .navigationBarItems(trailing: Cart(cartItems: cartItems.count))
            .padding(.top, 20.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
