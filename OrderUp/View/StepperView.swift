//
//  StepperView.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/8/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import SwiftUI

struct StepperView: View {

    @Binding var cartItems: Dictionary<Int, CartItem>
    var menuItem: MenuItem
    
    var body: some View {

        ZStack(alignment: .center) {
            Stepper(onIncrement: {
                self.cartItems[self.menuItem.id]!.quantity += 1
            }, onDecrement: {
                if self.cartItems[self.menuItem.id]!.quantity <= 1 {
                    self.cartItems[self.menuItem.id] = nil
                } else {
                   self.cartItems[self.menuItem.id]!.quantity -= 1
                }
            }, label: { Text("") })
            .labelsHidden()

            Text("\(cartItems[menuItem.id]?.quantity ?? 0)")
                .foregroundColor(Color.red)
                .font(.custom("Avenir", size: 14))
        }
    }
}
