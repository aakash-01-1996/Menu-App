//
//  ContentView.swift
//  Menu App
//
//  Created by Aakash Ambodkar
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        List(menuItems) { item in
            MenuListRow(item: item)
        }
        .listStyle(.plain)
        .onAppear {
            // Call for the data DataService
            menuItems = dataService.getData()
            
            // Add to cart product
            
            // Add & remove functionality
            
            // Place order
            
        }
    }
}

#Preview {
    MenuView()
}
