//
//  Meat_SolutionApp.swift
//  Meat Solution
//
//  Created by yoga arie on 03/12/22.
//

import SwiftUI

@main
struct Meat_SolutionApp: App {

  @StateObject var viewRouter = ViewRouter()

  var body: some Scene {
    WindowGroup {
      PageController()
        .environmentObject(viewRouter)
    }
  }
}
