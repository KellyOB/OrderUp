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
                MenuItem(id: 1, image: "pizza", name: "Margherita Pizza", description: "Classic cheese pizza wth basil.", price: 13.25),
                MenuItem(id: 2, image: "pizza-pepperoni", name: "Pepperoni Pizza", description: "Classic pepperoni and cheese pizza.", price: 15.25),
                MenuItem(id: 3, image: "pizza-vegetable", name: "Vegetarian Pizza", description: "Loaded with fresh vegetables, a vegetarian delight.", price: 14.50),
                MenuItem(id: 4, image: "pizza-tomato", name: "Tomato Pizza", description: "Simple pizza with fresh sliced tomatoes.", price: 12.50),
                MenuItem(id: 5, image: "pizza-tomato-pie", name: "Tomato Pie", description: "For those who like a thick crust and lots of tomatoes.", price: 15.50),
                MenuItem(id: 6, image: "pizza-meat", name: "Meat Lovers Pizza", description: "Pizza smothered in ground beef and sausage.", price: 18.50),
                MenuItem(id: 7, image: "pizza-sausage", name: "Rustic Sausage Pizza", description: "Sausage, tomatoes, olives and basil.  What else could you ask for!", price: 18.50)
            ]
            
        case "Pasta":
            return [
                MenuItem(id: 1, image: "pasta", name: "Pasta Marinara", description: "Classic spaghetti in red sauce.", price: 14.50),
                MenuItem(id: 2, image: "pasta-pesto", name: "Pesto Pasta", description: "Spaghetti in a freshly made basil pesto sauce.", price: 16.50),
                MenuItem(id: 3, image: "pasta-bolognese", name: "Spaghetti Bolognese", description: "Spaghetti in a meat sauce.", price: 18.50),
                MenuItem(id: 4, image: "pasta-shrimp", name: "Shrimp Fra Diavolo", description: "Garlic shrimp & crushed red pepper with penne in spicy rosa sauce.", price: 17.50),
                MenuItem(id: 5, image: "pasta-scallops", name: "Seafood Pasta", description: "Spaghetti with scallops and shrimp.", price: 21.50),
                MenuItem(id: 6, image: "pasta-gnocchi", name: "Gnocchi", description: "Bite size flour and potato dumplings in a white sauce.", price: 14.50),
                MenuItem(id: 7, image: "pasta-baked", name: "Baked Rigatoni", description: "Spicy Italian sausage & meat sauce tossed & topped with mozzarella, parmesan & ricotta.", price: 18.50)
            ]
            
           case "Salad":
            return [
                MenuItem(id: 1, image: "salad", name: "House Salad", description: "Romain with tomoatoes, onions, olives with Italian dressing.", price: 4.50),
                MenuItem(id: 2, image: "salad-caprese", name: "Caprese Salad", description: "Fresh Mozzarella, tomatoes, basil and Italian dressing. Served with garlic bread.", price: 7.50),
                MenuItem(id: 3, image: "salad-caesar", name: "Caesar Salad", description: "Romaine hearts tossed in our signature Caesar dressing with roasted garlic croutons & parmesan.", price: 7.50),
                MenuItem(id: 4, image: "salad-tofu", name: "Tofu Salad", description: "Vegetarian salad packed with protein.", price: 8.50),
                MenuItem(id: 5, image: "salad-pecans", name: "Pecan Salad", description: "Pecans, sun-dried tomatoes and avocado on romaine.", price: 7.50),
                MenuItem(id: 6, image: "salad-shrimp", name: "Shrimp Salad", description: "Garlic shrimp salad with romaine lettuce.", price: 8.50),
                MenuItem(id: 7, image: "salad-strawberry-mint", name: "Strawberry Mint Salad", description: "Strawberry,mint and feta on romaine with a balsalmic glaze.", price: 8.50)
            ]
            
            
            
            
            
        default:
            return [
                MenuItem(id: 1, image: "dessert", name: "Berry Crepes", description: "Decadent strawberry and raspberry crepes.", price: 8.50),
                MenuItem(id: 2, image: "dessert-apple-pie", name: "Apple Pie", description: "Hand-peeled mix of fresh apples with cinnamon, sugar and nutmeg.", price: 7.50),
                MenuItem(id: 3, image: "dessert-cherry-pie", name: "Cherry Pie", description: "Tart cheerys atop a flaky crust.", price: 7.50),
                MenuItem(id: 4, image: "dessert-molten-lava", name: "Molten Lava Cake", description: "Chocolate cake with a molten chocolate center.", price: 8.50),
                MenuItem(id: 5, image: "dessert-mint-chocolate", name: "Mint Chocolate Cupcake", description: "Oh so minty and chocolatey.", price: 4.50),
                MenuItem(id: 6, image: "dessert-chocolate-raspberry", name: "Chocolate Raspberry Tart", description: "Choclate filling topped with raspberries.", price: 8.50),
                 MenuItem(id: 7, image: "dessert-frappachino", name: "Mocha Frappuccino", description: "It's the perfect cold coffee drink, served with whipped cream.", price: 6.50),
                
            ]
        }
    }
}
