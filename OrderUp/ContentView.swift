//
//  ContentView.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/3/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var cartItems: Dictionary<Int, MenuItem> = [:]
    var menuItems = MenuItem.loadMenuItems()
    let categories = Category.loadCategories()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Categories")
                    .font(.headline)
                    .padding(.leading)
                
                ScrollView(.horizontal, content: {
                    HStack(spacing: 10) {
                        ForEach(categories) { category in
                            CategoryView(category: category)
                        }
                    }
                    .padding(.leading, 10)
                })
                    .frame(height: 190)
                
                Text("Menu")
                    .font(.headline)
                    .fontWeight(.medium)
                    .padding(.leading)
                
                List(menuItems) {
                    item in
                    MenuRow(inCart: self.inCart(menuItem: item), menuItem: item)
                   // MenuRow(inCart: self.inCart(menuItem: item), menuItem: item)
                }
            }
            .navigationBarTitle(Text("The Menu"), displayMode: .inline)
            .navigationBarItems(trailing: Cart(cartItems: cartItems.count))
            .padding(.top, 20.0)
        }
    }
    
    func inCart(menuItem: MenuItem) -> Bool {
        return cartItems[menuItem.id] != nil
    }

    func toggleCartItem(menuItem: MenuItem) {
        if cartItems[menuItem.id] == nil {
            cartItems[menuItem.id] = menuItem
        } else {
            cartItems[menuItem.id] = nil
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MenuRow: View {
    @State var stepperValue: Int = 0
    @State private var itemInCart = false
    @State private var cartItems: Dictionary<Int, MenuItem> = [:]
    
    var inCart: Bool = false
    var menuItem: MenuItem
    var body: some View {
        
        HStack {
            Image(menuItem.image)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(maxWidth: 75)
            
            VStack(alignment: .leading) {
                Text(menuItem.name)
                    .fontWeight(.medium)
                    .font(.custom("Avenir", size: 16))
                Text(menuItem.description)
                    .font(.custom("Avenir", size: 14))
                    
                    .foregroundColor(Color.gray)
                
                HStack {
                    Text(String(format: "$%.2f", menuItem.price))
                        .fontWeight(.bold)
                        .font(.custom("Avenir", size: 15))
                        .foregroundColor(Color(hue: 1.0, saturation: 0.838, brightness: 0.661))
                    
                    Spacer()

                    if itemInCart && stepperValue > 0 {
                        ZStack(alignment: .center) {
                            Stepper("Value", value: $stepperValue, in: 0...100, step: 1)
                                .labelsHidden()
                            
                            Text("\(stepperValue)")
                                .foregroundColor(Color(hue: 1.0, saturation: 0.838, brightness: 0.661))
                        }
                    } else {
                        
                        Button(action: {
                            self.itemInCart = true
                            self.stepperValue = 1
                            self.toggleCartItem(menuItem: self.menuItem)
 
                        }) {
                            Text("Add to Cart")
                                .font(.footnote)
                                .foregroundColor(Color.white)
                        }
                        .padding(.all, 5.0)
                        .background(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/)
                        .cornerRadius(10)
          
                    }
                    //                       .onTapGesture {
                    //                               self.toggleCartItem(menuItem: item)
                    //                       }
                    
                    
                    // }
                    
                }
                
                Spacer()
                //                Image(inCart ? "checked" : "unchecked")
                //                .resizable()
                //                    .aspectRatio(1, contentMode: .fit)
                //                    .frame(maxWidth: 50)
            }
        }
    }
    
    func inCart(menuItem: MenuItem) -> Bool {
        return cartItems[menuItem.id] != nil
    }
    
    func toggleCartItem(menuItem: MenuItem) {
        if cartItems[menuItem.id] == nil {
            cartItems[menuItem.id] = menuItem
        } else {
            cartItems[menuItem.id] = nil
        }
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

struct Cart: View {
    var cartItems: Int
    
    var body: some View {
        ZStack {
            Image("cart")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(maxWidth: 40)
            ZStack {
                Circle()
                    .fill(Color.red)
                    .frame(maxWidth: 30)
                Text("\(cartItems)")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
            }
            .offset(x: 20, y: 10)
            .opacity(cartItems > 0 ? 1.0 : 0)
        }
    }
}

struct CategoryView: View {
    
    let category: Category
    
    var body: some View {
        
        VStack {
            Image(category.image)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(maxWidth: 110)
                //.frame(width: 100)
                .border(Color.gray.opacity(0.5), width: 0.5)
                .cornerRadius(8)
            
            Text(category.name)
                .fontWeight(.bold)
                .font(.custom("Avenir", size: 17))
        }
    }
}
