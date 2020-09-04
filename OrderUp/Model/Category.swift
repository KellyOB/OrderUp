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
        let status1 = Category(id: 1, image: "icons8-chips", name: "Breakfast")
        let status2 = Category(id: 2, image: "icons8-salmon", name: "Lunch")
        let status3 = Category(id: 3, image: "icons8-salmon", name: "Dinner")
        let status4 = Category(id: 4, image: "icons8-salmon", name: "Sides")
        let status5 = Category(id: 5, image: "icons8-salmon", name: "Drinks")
        let status6 = Category(id: 6, image: "icons8-salmon", name: "Dessert")
      return [status1, status2, status3, status4, status5, status6]
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
