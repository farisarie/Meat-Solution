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
  let items: [Product]
  let courier: String
  let status: OrderStatus
  
  var totalPrice: Int {
    return items.map({ $0.price }).reduce(0, +)
  }
}

let histories: [History] = [
  History(
    id: "SDF83DJWQ9CN8WBFNF",
    items: [
        Product(id: 1, name: "Iga Premium", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 150000),
        Product(id: 2, name: "Iga Tulang", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 75000),
        Product(id: 3, name: "Knuckle", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 60000),
        Product(id: 4, name: "Oxtail", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 120000),
        Product(id: 5, name: "Paru", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 45000),
        Product(id: 6, name: "Rendang Chill", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 70000)
    ],
    courier: "JNE",
    status: .approved),
  History(
    id: "9FH38WNCEMCW9M3NF4",
    items: [
      Product(id: 1,name: "Beef Patty", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 50000),
      Product(id: 2,name: "Beef Slice", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 40000),
      Product(id: 3,name: "Blade", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 100000),
      Product(id: 4,name: "Brisket", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 80000)
    ],
    courier: "Si Cepat",
    status: .canceled),
]
