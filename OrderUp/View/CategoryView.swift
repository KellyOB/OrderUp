//
//  CategoryView.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/5/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import SwiftUI

struct CategoryView: View {
        
    @Binding var selectedCategory: String
    
    let categories: [Category]
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(spacing: 20) {
                ForEach(categories) { category in
                    CategoryCell(selectedCategory: self.$selectedCategory, category: category)
                }
            }
            .padding(.leading, 20)
        })
            //.frame(height: 180)
    }
}
