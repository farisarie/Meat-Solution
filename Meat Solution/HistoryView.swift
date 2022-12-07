//
//  HistoryView.swift
//  Meat Solution
//
//  Created by Vincent Gunawan on 06/12/22.
//

import SwiftUI

struct HistoryView: View {
  
  var body: some View {
    
    // MARK: - Order Navigation View
    NavigationView {
      ScrollView {
        VStack {
          Section {
            // MARK: - Order History List
            ForEach(histories) { history in
              NavigationLink(destination: HistoryDetailView(history: history)) {
                CardView(history: history)
                  .foregroundColor(.primary)
              }
            }
          }
        }
        .frame(maxWidth: .infinity)
      }
      .navigationTitle("Order History")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}