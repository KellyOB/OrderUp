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
    //var selectedCategory: String
  
   // var menuItems =
    let categories = Category.loadCategories()
    var selectedCategoryMenuItems = "Pasta" {
        didSet {

                //selectedCategoryMenuItems = "pizza"

        }
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Categories")
                    .fontWeight(.bold)
                    .font(.custom("Avenir", size: 20))
                    .padding(.leading, 20)
                
                CategoryView(categories: categories)
                
                Text("Menu")
                .fontWeight(.bold)
                .font(.custom("Avenir", size: 20))
                .padding(.leading, 20)
                
                MenuView(menuItems: MenuItem.loadmenu(category: selectedCategoryMenuItems))
//                List(menuItems) {
//                    item in
//                    MenuCell(inCart: self.inCart(menuItem: item), menuItem: item)
//                }
            }
            
                
            .navigationBarTitle(Text("The Menu"), displayMode: .inline)
            .navigationBarItems(trailing: Cart(cartItems: cartItems.count))
            .padding(.top, 20.0)
        }
        
    }
    
    func inCart(menuItem: MenuItem) -> Bool {
        return cartItems[menuItem.id] != nil
    }

//    func toggleCartItem(menuItem: MenuItem) {
//        if cartItems[menuItem.id] == nil {
//            cartItems[menuItem.id] = menuItem
//        } else {
//            cartItems[menuItem.id] = nil
//        }
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//struct StepperView: View {
//
//    var menuItem: MenuItem
//    @State private var cartItems: Dictionary<Int, MenuItem> = [:]
//
//    var body: some View {
//
//        List(availableItems) {
//            item in
//            MenuRow(inCart: self.inCart(menuItem: menuItem), menuItem: item)
//
//                .onTapGesture {
//                    self.toggleCartItem(menuItem: item)
//            }
//        }
//    }
//}



//extension View {
//    func hiddenConditionally(isHidden: Bool) -> some View {
//        isHidden ? AnyView(self.hidden()) : AnyView(self)
//    }
//}

//struct MenuList: View {
//
//    var availableItems: [MenuItem]
//    @State private var cartItems: Dictionary<Int, MenuItem> = [:]
//    
//    var body: some View {
//        
//        List(availableItems) {
//            item in
//            MenuRow(inCart: self.inCart(menuItem: item), menuItem: item)
//                
//                .onTapGesture {
//                    self.toggleCartItem(menuItem: item)
//            }
//        }
//    }
//}




