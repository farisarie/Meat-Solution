//
//  SplashscreenView.swift
//  Meat Solution
//
//  Created by Erlangga Anugrah Arifin on 06/12/22.
//

import SwiftUI

struct SplashscreenView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    @State private var timeSplashscreen = false
  @State private var checkEmail = UserDefaults.standard.string(forKey: "userEmail") ?? ""
    
    var body: some View {
        Image("Logo")
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .task(delaySplashscreen)
            
        
            
    }
    
    private func delaySplashscreen() async {
            try? await Task.sleep(nanoseconds: 1_500_000_000)
        timeSplashscreen = true
        withAnimation {
          if checkEmail == "" {
            viewRouter.currentPage = .onBoarding
          } else {
            viewRouter.currentPage = .home
          }
        }
        
        }
}

