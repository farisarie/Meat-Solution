//
//  RegisterView.swift
//  Meat Solution
//
//  Created by Caroline Chan on 05/12/22.
//

import SwiftUI

struct RegisterView: View {
  @State private var fullname: String = ""
  @State private var email: String = ""
  @State private var password: String = ""
  @EnvironmentObject var viewRouter: ViewRouter

  var body: some View {
    NavigationView {
      VStack(alignment: .leading) {
        Text("Register")
            .font(.title.weight(.bold))
            .foregroundColor(.accentColor)
            .padding(.vertical)
        Text("Full name".uppercased())
            .font(.subheadline.weight(.semibold))
            .foregroundColor(.accentColor)
        TextField("", text: $fullname)
            .textInputAutocapitalization(.words)
            .frame(maxWidth: .infinity, maxHeight: 51)
            .cornerRadius(6)
            .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color("AccentColor"), lineWidth: 1)
            )
            .padding(.bottom)
        Text("Email".uppercased())
            .font(.subheadline.weight(.semibold))
            .foregroundColor(.accentColor)
        TextField("", text: $email)
            .textInputAutocapitalization(.never)
            .frame(maxWidth: .infinity, maxHeight: 51)
            .cornerRadius(6)
            .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color("AccentColor"), lineWidth: 1)
            )
            .padding(.bottom)
        Text("Password".uppercased())
            .font(.subheadline.weight(.semibold))
            .foregroundColor(.accentColor)
        SecureField("", text: $password)
            .frame(maxWidth: .infinity, maxHeight: 51)
            .cornerRadius(6)
            .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color("AccentColor"), lineWidth: 1)
            )
        Text("Password field must be at least 8 characters.")
            .font(.footnote)
            .foregroundColor(.accentColor)
            .padding(.bottom)
        Button(action: {
          withAnimation {
            UserSettings.setUser(fullname: fullname, email: email, password: password)
            viewRouter.currentPage = .home
          }
        }) {
          Text("Sign Up")
              .font(.title2.weight(.bold))
              .foregroundColor(.white)
              .frame(maxWidth: .infinity, maxHeight: 54)
              .background((fullname != "") && (email != "") && (password.count >= 8) ? Color("AccentColor") : .gray)
              .cornerRadius(16)
        }
            .disabled((fullname != "") && (email != "") && (password.count >= 8) ? false : true)
        Spacer()
      }
          .padding(.horizontal)
          .navigationBarBackButtonHidden(true)
    }
  }
}

struct RegisterView_Previews: PreviewProvider {
  static var previews: some View {
    RegisterView()
  }
}
