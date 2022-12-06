//
//  DashboardView.swift
//  Meat Solution
//
//  Created by Caroline Chan on 05/12/22.
//

import SwiftUI

struct DashboardView: View {
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Favorite Products")
                    .font(.title3.weight(.bold))
                    .foregroundColor(.accentColor)
                FavoriteScrollView()
                
                Text("All Products")
                    .font(.title3.weight(.bold))
                    .foregroundColor(.accentColor)
                ProductScrollView()
            }
            .padding(.horizontal)
            .navigationBarTitle("Dashboard", displayMode: .inline)
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
