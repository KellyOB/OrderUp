//
//  StepperView.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/5/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import SwiftUI

struct StepperView: View {
    
    @Binding var cartItems: Dictionary<Int, CartItem>
    var item: MenuItem
    @State var stepperValue: Int = 0
    
    var body: some View {
        ZStack(alignment: .center) {
            Stepper("Value", value: $stepperValue, in: 0...100, step: 1)
                .labelsHidden()
            
            Text("\(stepperValue)")
                .foregroundColor(Color(hue: 1.0, saturation: 0.838, brightness: 0.661))
        }
    }
}

