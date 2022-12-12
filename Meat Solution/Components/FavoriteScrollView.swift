//
//  FavoriteScrollView.swift
//  Meat Solution
//
//  Created by Caroline Chan on 05/12/22.
//

import SwiftUI

struct FavoriteScrollView: View {
  var body: some View {
    GeometryReader { geometry in
      ScrollView(.horizontal) {
        HStack {
          ForEach(favorites) { product in
            Image(product.name)
                .resizable()
                .opacity(0.7)
                .scaledToFill()
                .overlay(
                        StrokeText(text: product.name.capitalized, width: 1, color: .black)
                            .foregroundColor(.black)
                            .font(.system(size: geometry.size.height * 1 / 40, weight: .bold))
                )
                .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 1 / 3)
                .background(.gray)
                .border(.gray, width: 5)
                .cornerRadius(15)
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
