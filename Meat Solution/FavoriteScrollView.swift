//
//  FavoriteScrollView.swift
//  Meat Solution
//
//  Created by Caroline Chan on 05/12/22.
//

import SwiftUI

struct FavoriteScrollView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                ForEach(0..<3) {
                    Text("Item \($0)")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 360, height: 200)
                        .background(.gray)
                        .cornerRadius(20)
                }
            }
        }
    }
}

struct FavoriteScrollView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteScrollView()
    }
}
