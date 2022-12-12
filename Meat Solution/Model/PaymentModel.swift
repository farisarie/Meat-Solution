//
//  PaymentModel.swift
//  Meat Solution
//
//  Created by Caroline Chan on 10/12/22.
//

import Foundation

struct Payment: Hashable {
  let paymentMethod: String
  let symbol: String
}

let payments: [Payment] = [
  Payment(paymentMethod: "Bank Transfer", symbol: "building.columns.circle"),
  Payment(paymentMethod: "Virtual Account", symbol: "building.columns.circle"),
  Payment(paymentMethod: "Credit Card", symbol: "creditcard.circle"),
  Payment(paymentMethod: "Mobile Banking", symbol: "iphone.circle")
]
