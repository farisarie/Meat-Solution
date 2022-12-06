//
//  SplashscreenView.swift
//  Meat Solution
//
//  Created by Caroline Chan on 05/12/22.
//

import SwiftUI

struct SplashscreenView: View {

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                
                Text("The one-stop solution for the local's meat market")
                    .foregroundColor(.accentColor)
                    .font(.footnote.weight(.semibold))
                
                Spacer()
                
                NavigationLink(destination: EmptyView()) {
                    Text("Login")
                        .font(.title2.weight(.bold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 54)
                        .background(Color("AccentColor"))
                        .cornerRadius(16)
                        .padding(.horizontal)
                }
                
                NavigationLink(destination: RegisterView()) {
                    Text("Sign Up")
                        .font(.title2.weight(.bold))
                        .foregroundColor(Color("AccentColor"))
                        .frame(maxWidth: .infinity, maxHeight: 51)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color("AccentColor"), lineWidth: 3)
                        )
                  .padding([.horizontal, .bottom])
                }
            }
        }
    }
}

struct SplashscreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashscreenView()
    }
}
