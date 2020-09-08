//
//  Cart.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/5/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import SwiftUI

struct Cart: View {
    
    var cartItems: Dictionary<Int, CartItem>
    
    var totalQuantity: Int {
        var quantity = 0
        for item in cartItems.values {
            quantity += item.quantity
        }
        return quantity
    }
    
    var body: some View {
        ZStack {
            Image(systemName: "cart")
                .font(.system(size: 27))
                .foregroundColor(totalQuantity > 0 ? .red : .black)
                         
            ZStack {
                Circle()
                    .fill(Color.red)
                    .frame(maxWidth: 20)
                Text("\(totalQuantity)")
                    .fontWeight(.bold)
                    .font(.custom("Avenir", size: 12))
                    .foregroundColor(Color.white)                
            }
            .offset(x: 15, y: -10)
            .opacity(totalQuantity > 0 ? 1.0 : 0)
        }
    }
}
