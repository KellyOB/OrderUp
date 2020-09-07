//
//  CategoryView.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/5/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import SwiftUI

struct CategoryCell: View {
    
 @Binding var selectedCategory: String
    
    var category: Category
    
    var body: some View {
    
        VStack {
            Image(category.image)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 150)
                .cornerRadius(12)
                .shadow(color: .gray, radius: 5, x: 5, y: 7)
             
            //if category == self.selectedCategory {
                Text(category.name)
                .fontWeight(.bold)
                .font(.custom("Avenir", size: 20))
                    .foregroundColor(.red)
//            } else {
//                Text(category.name)
//                .fontWeight(.bold)
//                .font(.custom("Avenir", size: 20))
//                    .foregroundColor(.black)
//            }
        }
        .onTapGesture {
            print("category tapped \(self.category.name)")
            self.selectedCategory = self.category.name
        }
    }
}
