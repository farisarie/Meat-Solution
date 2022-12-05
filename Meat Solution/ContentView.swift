//
//  ContentView.swift
//  Meat Solution
//
//  Created by Erlangga Anugrah Arifin on 05/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CatalogView()
                .tabItem {
                    Label("Catalog", systemImage: "square.stack.fill")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

