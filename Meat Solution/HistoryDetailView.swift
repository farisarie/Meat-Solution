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
          ProductItemView(product: history)
          HStack {
            Text("Total")
            Spacer()
            Text("Rp \(history.totalPrice)")
          }
              .foregroundColor(.accentColor)
              .fontWeight(.semibold)
        }
        Section(header: Text("Delivery Details")) {
          Label {
            Text(UserDefaults.standard.string(forKey: "desAddress") ?? "Jl Jati Mataram No. 277")
          } icon: {
            Image(systemName: "house.fill")
          }
          Label {
            Text(UserDefaults.standard.string(forKey: "desCity") ?? "Jakarta Selatan")
          } icon: {
            Image(systemName: "location.fill")
          }
          Label {
            Text(UserDefaults.standard.string(forKey: "desPostal") ?? "12345")
          } icon: {
            Image(systemName: "signpost.right.fill")
          }
        }
        Section(header: Text("Courier Information")) {
          Label {
            Text(history.courier)
          } icon: {
            Image(systemName: "box.truck.fill")
          }
          Label {
            Text("(+021) 123 4567")
          } icon: {
            Image(systemName: "phone.fill")
          }
        }
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
