//
//  LoginView.swift
//  testSwiftUI
//
//  Created by Muhammad Fahmi on 06/12/22.
//

import SwiftUI

struct LoginView: View {
  @State private var email = ""
  @State private var password = ""
  @State private var wrongUsername: Float = 0
  @State private var wrongPassword: Float = 0
  @State private var showingLoginScreen = false
  @EnvironmentObject var viewRouter: ViewRouter

  var body: some View {
    NavigationView {
      ZStack {
        Color.accentColor
            .ignoresSafeArea()
        Circle()
            .scale(1.7)
            .foregroundColor(.white.opacity(0.15))
        Circle()
            .scale(1.35)
            .foregroundColor(.white)
        VStack {
          Text("Login")
              .font(.largeTitle)
              .bold()
              .padding()

          TextField("Email", text: $email)
              .textInputAutocapitalization(.never)
              .padding()
              .frame(width: 300, height: 50)
              .background(Color.black.opacity(0.05))
              .cornerRadius(10)
              .border(.red, width: CGFloat(wrongUsername))
          SecureField("Password", text: $password)
              .padding()
              .frame(width: 300, height: 50)
              .background(Color.black.opacity(0.05))
              .cornerRadius(10)
              .border(.red, width: CGFloat(wrongPassword))
          Button(action: {
            withAnimation {
              UserSettings.setUser(fullname: "", email: email, password: password)
              viewRouter.currentPage = .home
            }
          }) {
            Text("Login")
                .foregroundColor(.white)
                .frame(width: 300, height: 50)
                .background((email != "") && (password.count >= 8) ? Color("AccentColor") : .gray)
                .cornerRadius(10)
          }
              .disabled((email != "") && (password.count >= 8) ? false : true)
        }
      }
          .navigationBarHidden(true)
    }
  }

  func authenticateUser(username: String, password: String) {
    if username.lowercased() == "meat2022" {
      wrongUsername = 0
      if password.lowercased() == "meat123" {
        wrongPassword = 0
        showingLoginScreen = true
      } else {
        wrongPassword = 2
      }
    } else {
      wrongUsername = 2
    }
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
