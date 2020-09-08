//
//  MenuRow.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/5/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import SwiftUI

struct MenuRow: View {
    
    @Binding var cartItems: Dictionary<Int, CartItem>
    var menuItem: MenuItem
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 20) {
            Image(menuItem.image)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 110)
                .cornerRadius(12)
                .shadow(color: .gray, radius: 5, x: 3, y: 5)
            
            VStack(alignment: .leading, spacing:7) {
                Text(menuItem.name)
                    .fontWeight(.bold)
                    .font(.custom("Avenir", size: 17))
                Text(menuItem.description)
                    .fontWeight(.medium)
                    .font(.custom("Avenir", size: 14))
                    .foregroundColor(Color.gray)
                
                HStack {
                    Text(String(format: "$%.2f", menuItem.price))
                        .fontWeight(.bold)
                        .font(.custom("Avenir", size: 16))
                        .foregroundColor(Color.red)
                    
                    Spacer()

                    if inCart(menuItem: menuItem) {
                        StepperView(cartItems: $cartItems, menuItem: menuItem)
                    } else {
                        Button(action: {
                            self.toggleCartItem(menuItem: self.menuItem)
                        }) {
                            Text("Add to Cart")
                                .font(.footnote)
                                .foregroundColor(Color.white)
                        }
                        .buttonStyle(BorderlessButtonStyle())
                        .padding(.all, 6.0)
                        .frame(width: 90, height: 31)
                        .background(Color.red)
                        .cornerRadius(10)          
                    }
                }
            }
        }
    }
    
    func inCart(menuItem: MenuItem) -> Bool {
        return cartItems[menuItem.id] != nil
    }
    
    func toggleCartItem(menuItem: MenuItem) {
        if cartItems[menuItem.id] == nil {
            cartItems[menuItem.id] = CartItem(item: menuItem, quantity: 1)
        } else {
            cartItems[menuItem.id] = nil
        }
    }
}
