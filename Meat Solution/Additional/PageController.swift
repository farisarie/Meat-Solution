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
        case .splashScreen:
            SplashscreenView()
                .transition(.slide)
        case .home:
            let _ = print("Im at home")
            TabView {
                DashboardView()
                    .tabItem {
                        Label("Katalog", systemImage: "square.stack.fill")
                    }
                ProfileView()
                    .tabItem {
                        Label("Profil", systemImage: "person.fill")
                    }
            }
            .transition(.slide)
        }
    }
}

struct PageController_Previews: PreviewProvider {
    static var previews: some View {
        PageController()
            .environmentObject(ViewRouter())
    }
}
