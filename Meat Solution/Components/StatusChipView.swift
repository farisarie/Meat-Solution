//
//  StatusChipView.swift
//  Meat Solution
//
//  Created by Vincent Gunawan on 06/12/22.
//

import SwiftUI

struct StatusChipView: View {
  let status: OrderStatus
  var color: Color {
    switch self.status {
    case .new:
      return .gray
    case .canceled:
      return .red
    case .done:
      return .green
    default:
      return .yellow
    }
  }
  
  var body: some View {
    Text(status.rawValue)
      .font(.caption)
      .bold()
      .padding(6)
      .background(color)
      .cornerRadius(8)
  }
}

struct StatusChipView_Previews: PreviewProvider {
  static var previews: some View {
    StatusChipView(status: .inProgress)
  }
}
