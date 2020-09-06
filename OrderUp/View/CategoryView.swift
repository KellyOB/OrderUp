//
//  CategoryView.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/5/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import SwiftUI

struct CategoryView: View {
    
    
    let categories: [Category]
    
    var body: some View {
        
        ScrollView(.horizontal, content: {
            HStack(spacing: 10) {
                ForEach(categories) { category in
                    CategoryCell(category: category)
                }
            }
            .padding(.leading, 10)
        })
            .frame(height: 190)
        
    }
}
