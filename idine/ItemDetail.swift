//
//  ItemDetail.swift
//  idine
//
//  Created by Sean Dooley on 15/10/2024.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var order: Order
    let item: MenuItem
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundStyle(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
            Button("Add to order") {
                order.add(item: item)
            }
                .buttonStyle(.borderedProminent)
                .font(.title2) // Custom font size
                .padding() // Add some padding
                .background(Color.blue) // Custom background color
                .foregroundColor(.white) // Text color
                .cornerRadius(10) // Rounded corners
                .shadow(radius: 5) // Add shadow for effect
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button(action: {
            toggleFavourite()
        }) {
            Image(systemName: order.isFavourite(item: item) ? "heart.fill" : "heart")
                .foregroundColor(order.isFavourite(item: item) ? .red : .gray)
        })
    }
    
    func toggleFavourite() {
        if order.isFavourite(item: item) {
            order.removeFavourite(item: item)
        } else {
            order.addFavourite(item: item)
        }
    }
}

#Preview {
    NavigationStack {
        ItemDetail(item: MenuItem.example)
            .environmentObject(Order())
    }
}
