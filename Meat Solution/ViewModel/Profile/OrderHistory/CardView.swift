//
//  CardView.swift
//  Meat Solution
//
//  Created by Vincent Gunawan on 06/12/22.
//

import SwiftUI

struct CardView: View {

  let history: History

  init(history: History) {
    self.history = history
  }

  var body: some View {
    VStack(alignment: .leading) {
      HStack {
        Image(systemName: "bag.fill")
        Text(history.id)
          .font(.headline)
      }
      Spacer()
      HStack {
        Image(systemName: "box.truck.fill")
        Text(history.courier)
          .fixedSize(horizontal: false, vertical: true)
        Spacer()
        StatusChipView(status: history.status)
      }
        .font(.caption)
    }
      .padding()
      .background(.ultraThinMaterial)
      .cornerRadius(16)
      .padding(.horizontal)
  }
}

struct CardView_Previews: PreviewProvider {
  static var previews: some View {
    CardView(history: histories.first!)
      .background(.thinMaterial)
      .previewLayout(.fixed(width: 400, height: 80))
  }
}
