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
    @Binding var cartItems: Dictionary<Int, CartItem>
    
    var body: some View {
        
        List(menuItems) {
            item in
            MenuRow(cartItems: self.$cartItems, menuItem: item)
            
        }
        .environment(\.defaultMinListRowHeight, 130)
        .onAppear {
            UITableViewCell.appearance().selectionStyle = .none
            UITableView.appearance().separatorStyle = .none
        }
    }
}
