//
//  CardView.swift
//  Meat Solution
//
//  Created by Vincent Gunawan on 06/12/22.
//

import SwiftUI

struct CardView: View {
  
  let order = histories.first
  
  var body: some View {
    VStack (alignment: .leading){
      HStack {
        Image(systemName: "bag.fill")
          .font(.title)
          .padding(0)
        Text(String(order?.id ?? "").prefix(120))
          .font(.headline)
          .padding(.trailing, 10)
        StatusChipView(status: .inProgress)
          .font(.caption)
      }
    }
    .padding()
  }
}

struct CardView_Previews: PreviewProvider {
  static var previews: some View {
    CardView()
      .background(.thinMaterial)
      .previewLayout(.fixed(width: 400, height: 80))
  }
}
