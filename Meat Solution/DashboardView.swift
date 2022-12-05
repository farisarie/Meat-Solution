//
//  DashboardView.swift
//  Meat Solution
//
//  Created by Caroline Chan on 05/12/22.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Dashboard")
                .font(.title.weight(.black))
                .foregroundColor(.accentColor)
                .padding(.vertical)
            
            Text("Produk Favorit")
                .font(.title3.weight(.bold))
                .foregroundColor(.accentColor)
            FavoriteScrollView()
            
            Text("Semua Produk")
                .font(.title3.weight(.bold))
                .foregroundColor(.accentColor)
            ProductScrollView()
        }
        .padding(.horizontal)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
