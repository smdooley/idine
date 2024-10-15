//
//  FavouritesView.swift
//  idine
//
//  Created by Sean Dooley on 15/10/2024.
//

import SwiftUI

struct FavouritesView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            List(order.favourites) { item in
                NavigationLink(destination: ItemDetail(item: item)) {
                    Text(item.name)
                }
            }
            .navigationTitle("Favourites")
        }
    }
}

#Preview {
    FavouritesView()
        .environmentObject(Order())
}
