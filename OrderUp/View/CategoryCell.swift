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
                //.frame(minWidth: 60.0, idealWidth: 130.0, maxWidth: 130.0, minHeight: 60.0, idealHeight: 130.0, maxHeight: 130.0, alignment: .center)
                //.frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.4)
                .frame(width: 130)
                .cornerRadius(12)
                .shadow(color: .gray, radius: 5, x: 5, y: 7)
             
            Text(category.name)
                .fontWeight(.bold)
                .font(.custom("Avenir", size: 20))
                .foregroundColor(category.name == self.selectedCategory ? .red : .black)     
        }
        .onTapGesture {
            self.selectedCategory = self.category.name
        }
    }
}
