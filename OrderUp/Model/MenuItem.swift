//
//  MenuItem.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/3/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import Foundation

struct MenuItem: Identifiable { //}, Equatable {
    var id: Int
    var image: String
    var name: String
    var description: String
    var price: Double
    
    static func loadMenuItems() -> [MenuItem] {
        return [
            MenuItem(id: 1, image: "icons8-chips", name: "Chips", description: "Shoe-string french fries.", price: 0.99),
            MenuItem(id: 2, image: "icons8-salmon", name: "Salmon", description: "Moist and delicious, this salmon is cooked to perfection and served with brocolli.", price: 24.99),
            MenuItem(id: 3, image: "icons8-cherry_donut", name: "Cherry Donut", description: "Sweet treat.", price: 0.75)
        ]
    }
}


