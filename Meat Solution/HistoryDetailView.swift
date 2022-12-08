//
//  HistoryDetailView.swift
//  Meat Solution
//
//  Created by Vincent Gunawan on 07/12/22.
//

import SwiftUI

struct HistoryDetailView: View {
  let history: History
  
  var body: some View {
    VStack(alignment: .leading) {
      HStack {
        Text("You are currently viewing order")
          .font(.callout)
          .bold()
          .padding(8)
        Spacer()
        StatusChipView(status: history.status)
          .padding(.trailing, 8)
      }
      Text("\(history.id)")
        .font(.title2)
        .bold()
        .foregroundColor(.accentColor)
        .padding(.leading, 8)
      List {
        Section(header: Text("Order Items")) {
          ForEach(history.items, id: \.self) { product in
            ProductItemView(product: product)
          }
          HStack {
            Text("Total")
            Spacer()
            Text("Rp \(self.history.totalPrice)")
          }
          .foregroundColor(.accentColor)
          .fontWeight(.semibold)
        }
        
        // TODO: Create Courier Information
      }
    }
    .padding(8)
  }
}

struct HistoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
      HistoryDetailView(history: histories.first!)
    }
}
