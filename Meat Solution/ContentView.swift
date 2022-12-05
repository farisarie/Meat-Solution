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
                    Label("Katalog", systemImage: "square.stack.fill")
                }
            ProfileView()
                .tabItem {
                    Label("Profil", systemImage: "person.fill")
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
