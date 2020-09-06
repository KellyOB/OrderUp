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
        let cat1 = Category(id: 1, image: "icons8-chips", name: "Breakfast")
        let cat2 = Category(id: 2, image: "icons8-salmon", name: "Lunch")
        let cat3 = Category(id: 3, image: "icons8-salmon", name: "Dinner")
        let cat4 = Category(id: 4, image: "icons8-sweet_banana", name: "Sides")
        let cat5 = Category(id: 5, image: "icons8-salmon", name: "Drinks")
        let cat6 = Category(id: 6, image: "icons8-cherry_donut", name: "Dessert")
      return [cat1, cat2, cat3, cat4, cat5, cat6]
    }
    
    
    
//    static func loadCategories() -> [Category] {
//        return [
//            Category(id: 1, image: "icons8-chips", name: "Chips"),
//            Category(id: 2, image: "icons8-salmon", name: "Salmon"),
//            Category(id: 3, image: "icons8-cherry_donut", name: "Cherry Donut"),
//            Category(id: 4, image: "icons8-salmon", name: "Salmon"),
//            Category(id: 5, image: "icons8-cherry_donut", name: "Cherry Donut")
//        ]
//    }
}
