//
//  MenuCell.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/5/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import SwiftUI

struct MenuCell: View {
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
