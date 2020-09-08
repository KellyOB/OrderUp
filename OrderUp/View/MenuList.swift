//
//  MenuList.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/5/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import SwiftUI

struct MenuList: View {
    
    let menuItems: [MenuItem]
    // use state whenever a view neds to maniuplate its own data
    //@State private var cartItems: Dictionary<Int, MenuItem> = [:]
    
    var body: some View {
        
        List(menuItems) {
            item in
            MenuRow(menuItem: item)
                
            //MenuCell(inCart: self.inCart(menuItem: item), menuItem: item)
            
        }
        .environment(\.defaultMinListRowHeight, 130)
        .onAppear {
            UITableViewCell.appearance().selectionStyle = .none
            UITableView.appearance().separatorStyle = .none
        }
    }
    
    
}
