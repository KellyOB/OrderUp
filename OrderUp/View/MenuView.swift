//
//  MenuView.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/5/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    
    let menuItems: [MenuItem]
    
    var body: some View {
        
        List(menuItems) {
            item in
            MenuCell(menuItem: item)
            //MenuCell(inCart: self.inCart(menuItem: item), menuItem: item)
            
        }
        .environment(\.defaultMinListRowHeight, 130)
        .onAppear {
            UITableViewCell.appearance().selectionStyle = .none
            UITableView.appearance().separatorStyle = .none
        }
    }
}
