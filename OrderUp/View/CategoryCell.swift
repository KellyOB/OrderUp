//
//  CategoryView.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/5/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import SwiftUI

struct CategoryCell: View {
    
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
