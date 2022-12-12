//
//  OrderHistoryView.swift
//  Meat Solution
//
//  Created by Erlangga Anugrah Arifin on 06/12/22.
//

import SwiftUI

struct OrderHistoryView: View {
  var body: some View {
    GeometryReader { reader in
      List {
        ForEach(0..<3) { _ in
          HStack {
            Text("ID123456789")
            Spacer()
            Text("finished".capitalized)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .foregroundColor(.white)
                .background(.green)
                .cornerRadius(20)
          }
        }
      }
          .environment(\.defaultMinListRowHeight, reader.size.height * (1 / 15))
    }
        .listStyle(.plain)
        .navigationBarTitle("Order History", displayMode: .inline)
  }
}

struct OrderHistoryView_Previews: PreviewProvider {
  static var previews: some View {
    OrderHistoryView()
  }
}
