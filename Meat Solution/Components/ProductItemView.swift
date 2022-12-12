//
//  ProductItemView.swift
//  Meat Solution
//
//  Created by Vincent Gunawan on 08/12/22.
//

import SwiftUI

struct ProductItemView: View {

  let product: History

  var body: some View {
    HStack {
      Image(product.items.name)
          .resizable()
          .frame(width: 120, height: 80)
      VStack(alignment: .leading) {
        Text(product.items.name)
            .font(.headline.weight(.bold))
        Spacer()
        HStack {
          Text("Rp \(product.items.price)")
          Text("x\(product.qty)")
        }
            .foregroundColor(.accentColor)
            .fontWeight(.semibold)
      }
    }
  }
}

struct ProductItemView_Previews: PreviewProvider {
  static var previews: some View {
    ProductItemView(product: (histories.first)!)
        .previewLayout(.fixed(width: 250, height: 80))
  }
}
