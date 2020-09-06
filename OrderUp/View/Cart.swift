//
//  Cart.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/5/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import SwiftUI

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
