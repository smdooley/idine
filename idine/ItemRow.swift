//
//  ItemRow.swift
//  idine
//
//  Created by Sean Dooley on 15/10/2024.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
            VStack(alignment: .leading, content: {
                Text(item.name)
                Text("$\(item.price)")
            })
        }
    }
}

#Preview {
    ItemRow(item: MenuItem.example)
}
