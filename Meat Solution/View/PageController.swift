//
//  PageController.swift
//  Meat Solution
//
//  Created by Erlangga Anugrah Arifin on 06/12/22.
//

import SwiftUI

struct PageController: View {

  @EnvironmentObject var viewRouter: ViewRouter

  var body: some View {
    switch viewRouter.currentPage {
    case .onBoarding:
      OnboardingView()
        .transition(.slide)
    case .home:
      TabView {
        DashboardView()
          .tabItem {
            Label("Catalog", systemImage: "square.stack.fill")
          }
        ProfileView()
          .tabItem {
            Label("Profile", systemImage: "person.fill")
          }
      }
        .transition(.slide)
    case .splashScreen:
      SplashscreenView()
        .transition(.opacity)
    }
  }
}

struct PageController_Previews: PreviewProvider {
  static var previews: some View {
    PageController()
      .environmentObject(ViewRouter())
  }
}
