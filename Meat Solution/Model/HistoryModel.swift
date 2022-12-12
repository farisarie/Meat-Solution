//
//  HistoryModel.swift
//  Meat Solution
//
//  Created by Vincent Gunawan on 06/12/22.
//

import Foundation

enum OrderStatus: String {
  case new = "New"
  case approved = "Approved"
  case inProgress = "In Progress"
  case done = "Done"
  case canceled = "Canceled"
}

struct History: Hashable, Identifiable {
  let id: String
  let items: Product
  let courier: String
  let qty: Int
  let status: OrderStatus

  var totalPrice: Int {
    items.price * qty
  }
}

let histories: [History] = [
  History(
          id: "CMASDJNF3839FN32D9",
          items: Product(id: 1, name: "Beef Patty", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 50000),
          courier: "J&T",
          qty: 10,
          status: .new),
  History(
          id: "SDF83DJWQ9CN8WBFNF",
          items: Product(id: 2, name: "Iga Premium", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 150000),
          courier: "JNE",
          qty: 2,
          status: .approved),
  History(
          id: "9FH38WNCEMCW9M3NF4",
          items: Product(id: 3, name: "Beef Patty", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 50000),
          courier: "Si Cepat",
          qty: 5,
          status: .canceled),
]
