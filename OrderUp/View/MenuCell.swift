//
//  MenuCell.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/5/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import SwiftUI

struct MenuCell: View {
    @State var quantity: Int = 0
    @State private var itemInCart = false
    @State private var cartItems: Dictionary<Int, MenuItem> = [:]
    
    var inCart: Bool = false
    var menuItem: MenuItem
    var body: some View {
        
        HStack(alignment: .center, spacing: 30) {
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

                    if itemInCart && quantity > 0 {
                        // this isn't hiding stepper when going to 0
                        //StepperView(quantity: quantity)
                        ZStack(alignment: .center) {
                            Stepper(onIncrement: {
                                self.quantity += 1
                            }, onDecrement: {
                                self.quantity -= 1
                            }, label: { Text("\(quantity)") })
                            .labelsHidden()

                            Text("\(quantity)")
                                .foregroundColor(Color.red)
                                .font(.custom("Avenir", size: 14))
                        }
                    } else {
                        
                        Button(action: {
                            self.itemInCart = true
                            self.quantity = 1
                            self.toggleCartItem(menuItem: self.menuItem)
 
                        }) {
                            Text("Add to Cart")
                                .font(.footnote)
                                .foregroundColor(Color.white)
                        }
                        .buttonStyle(BorderlessButtonStyle())
                        .padding(.all, 6.0)
                        .frame(width: 90, height: 31)
                        .background(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/)
                        .cornerRadius(10)
          
                    }
                    //                       .onTapGesture {
                    //                               self.toggleCartItem(menuItem: item)
                    //                       }
                    
                    
                    // }
                    
                }
                
                //Spacer()
                //                Image(inCart ? "checked" : "unchecked")
                //                .resizable()
                //                    .aspectRatio(1, contentMode: .fit)
                //                    .frame(maxWidth: 50)
            }//.padding(navigationBarItems(leading: 20))
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
