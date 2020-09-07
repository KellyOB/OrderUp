//
//  Category.swift
//  OrderUp
//
//  Created by Kelly O' on 9/3/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import Foundation

struct Category: Identifiable{
    var id: Int
    var image: String
    var name: String
    
    static func loadCategories() -> [Category] {
        return [
            Category(id: 1, image: "pizza", name: "Pizza"),
            Category(id: 2, image: "pasta", name: "Pasta"),
            Category(id: 3, image: "salad", name: "Salad"),
            Category(id: 4, image: "dessert", name: "Dessert")
        ]
    }
}
