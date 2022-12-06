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
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Register")
                    .font(.title.weight(.bold))
                    .foregroundColor(.accentColor)
                    .padding(.vertical)
                
                Text("FULL NAME")
                    .font(.caption.weight(.semibold))
                    .foregroundColor(.accentColor)
                TextField("", text: $fullname)
                    .frame(maxWidth: .infinity, maxHeight: 51)
                    .cornerRadius(6)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color("AccentColor"), lineWidth: 1)
                    )
                    .padding(.bottom)
                
                Text("E-MAIL")
                    .font(.caption.weight(.semibold))
                    .foregroundColor(.accentColor)
                TextField("", text: $email)
                    .frame(maxWidth: .infinity, maxHeight: 51)
                    .cornerRadius(6)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color("AccentColor"), lineWidth: 1)
                    )
                    .padding(.bottom)
                
                Text("PASSWORD")
                    .font(.caption.weight(.semibold))
                    .foregroundColor(.accentColor)
                SecureField("", text: $password)
                    .frame(maxWidth: .infinity, maxHeight: 51)
                    .cornerRadius(6)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color("AccentColor"), lineWidth: 1)
                    )
                    .padding(.bottom)
                
               /*
                NavigationLink(destination: ContentView()) {
                    Text("Sign Up")
                        .font(.title2.weight(.bold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 54)
                        .background(Color("AccentColor"))
                        .cornerRadius(16)
                }
                */
                Button(action: {
                    ContentView()
                         //
                        }) {
                            Text("Let's Go \(Image(systemName: "arrow.forward"))")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 60)
                                .padding(.horizontal, 100)
                                .background(Color.blue)
                                .cornerRadius(50)
                        }
                
                
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
