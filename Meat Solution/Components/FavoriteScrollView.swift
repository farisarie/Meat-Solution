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
                ForEach(favorites, id: \.self) { favorite in
                    NavigationLink(destination: EmptyView()) {
                        ZStack {
                            Image(favorite.name)
                                .resizable()
                                .frame(width: 350, height: 200)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color("AccentColor"), lineWidth: 3)
                                )
                            
                            Text(favorite.name)
                                .font(.title.weight(.bold))
                                .foregroundColor(.white)
                        }
                        .frame(maxHeight: 206)
                    }
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
