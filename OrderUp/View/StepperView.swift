//
//  StepperView.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/5/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import SwiftUI

struct StepperView: View {
    
   // @Binding var cartItems: Dictionary<Int, CartItem>
    //var item: MenuItem
   @State var quantity: Int = 0
    var body: some View {
        ZStack(alignment: .center) {
            Stepper(onIncrement: {
                self.quantity += 1
            }, onDecrement: {
                self.quantity -= 1
            }, label: { Text("\(quantity)") })
            .labelsHidden()
            
            Text("\(quantity)")
                .foregroundColor(Color.red)
        }
    }
}

