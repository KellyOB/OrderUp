//
//  ContentView.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/3/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

// *******************************************************
// 1. I tried putting the whole thing in a scrollView so
//    that on smaller screens you were seeing more of the
//    the menu items but I couldn't get it to work.
//
// 2. Is there a way to target specific screen sizes for
//    SwiftUI?  I couldn't find a good way to size the
//    images down just for the old SE.
// *******************************************************

import SwiftUI

struct ContentView: View {
    
    @State var cartItems: Dictionary<Int, CartItem> = [:]
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
                
                MenuList(menuItems: MenuItem.loadmenu(category: selectedCategory), cartItems: $cartItems)
            }
            .navigationBarTitle(Text("Order Up"), displayMode: .inline)
            .navigationBarItems(trailing: Cart(cartItems: cartItems))
            .padding(.top, 20.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
