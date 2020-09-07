//
//  MenuItem.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/3/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import Foundation

//enum Categories {
//    case pizza, pasta, salad, dessert
//}

struct MenuItem: Identifiable { //}, Equatable {
    var id: Int
    var image: String
    var name: String
    var description: String
    var price: Double
    
    static func loadmenu(category: String) -> [MenuItem] {
               
        switch category {
        case "Pizza":
            return [
                MenuItem(id: 1, image: "pizza-pepperoni", name: "Pepperoni Pizza", description: "Classic pepperoni and cheese pizza.", price: 10.25),
                MenuItem(id: 2, image: "pizza-vegetable", name: "Vegetarian Pizza", description: "Loaded with fresh vegetables, a vegetarian delight.", price: 24.99),
                MenuItem(id: 3, image: "pizza-tomato", name: "Tomato Pizza", description: "Simple pizza with fresh slided tomatoes.", price: 12.75),
                MenuItem(id: 4, image: "pizza-tomato-pie", name: "Tomato Pie", description: "For those who like a thick crust and lots of tomatoes.", price: 15.75),
                MenuItem(id: 5, image: "pizza-meat", name: "Meat Lovers Pizza", description: "Pizza smothered in ground beef.", price: 25.75),
                MenuItem(id: 6, image: "pizza-sausage", name: "Rustic Sausage Pizza", description: "Sausage, tomatoes, olives and basil.  What else could you ask for!", price: 25.75)
            ]
            
        case "Pasta":
            return [
                MenuItem(id: 1, image: "pizza-pepperoni", name: "Pasta Primavera", description: "Classic pepperoni and cheese pizza.", price: 10.25),
                MenuItem(id: 2, image: "pizza-vegetable", name: "Vegetarian Pizza", description: "Loaded with fresh vegetables, a vegetarian delight.", price: 24.99),
            ]
            
        default:
            return [
                MenuItem(id: 1, image: "pizza-pepperoni", name: "Shit on a shingle", description: "Classic pepperoni and cheese pizza.", price: 10.25),
                
            ]
        }
    }
}
