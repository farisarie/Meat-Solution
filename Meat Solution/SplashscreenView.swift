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
    
    var body: some View {
        Image("Logo")
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .task(delaySplashscreen)
        
            
    }
    
    private func delaySplashscreen() async {
            try? await Task.sleep(nanoseconds: 2_000_000_000)
        timeSplashscreen = true
        withAnimation {
            viewRouter.currentPage = .onBoarding
        }
        
        }
}

//struct SplashscreenView_Previews: PreviewProvider {
//    static var previews: some View {
//        SplashscreenView()
//    }
//}
