//
//  ProductItemView.swift
//  Meat Solution
//
//  Created by Vincent Gunawan on 08/12/22.
//

import SwiftUI

struct ProductItemView: View {
  
  let product: Product
  
  var body: some View {
    HStack {
      Image(product.name)
        .resizable()
        .frame(width: 120, height: 80)
      VStack (alignment: .leading) {
        Text(product.name)
          .font(.headline.weight(.bold))
        Spacer()
        Text("Rp \(product.price)")
          .foregroundColor(.accentColor)
          .fontWeight(.semibold)
      }
    }
  }
}

struct ProductItemView_Previews: PreviewProvider {
  static var previews: some View {
    ProductItemView(product: (histories.first?.items.first)!)
      .previewLayout(.fixed(width: 250, height: 80))
  }
}
