//
//  EditProfileView.swift
//  Meat Solution
//
//  Created by Erlangga Anugrah Arifin on 05/12/22.
//

import SwiftUI

struct EditProfileView: View {
    @State var fullname = ""
    @State var email = ""
    @State var password = ""
    @State private var isShowingAlert = false

    @Environment(\.presentationMode) var presentationMode

    init() {
                let navBarAppearance = UINavigationBar.appearance()
                navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
              }
    
    var body: some View {
//        NavigationView {
              VStack {
                Form {
                    Section(header: Text("User photo"), footer: Text("Password field must be 8 characters or exceed to save.")) {
                      Image("dummyUser")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .listRowBackground(Color.clear)
                        Text("Choose Photo")
                        Text("Delete Photo")
                            .foregroundColor(.red)
                    }
                    
                  Section(header: Text("User detail"), footer: Text("")) {
                    TextField("Fullname", text: $fullname)
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)
                  }
                  Section {
                    Button("Save") {
                        let _ = print("Saved!")
//                      Profile.saveProfile(username: username, fullname: fullname, job: job)
//                      presentationMode.wrappedValue.dismiss()
                    }
                    .disabled(countText(fullnameCount: 2, emailCount: 5, passwordCount: 8))
                  }
                }
                        .onAppear {
//                          getProfile()
                            UITableViewCell.appearance().backgroundColor = UIColor.clear
                        }
                  
              }
//                      .navigationTitle("Edit Profile")
//                      .navigationViewStyle(.stack)
              .navigationBarTitle("Edit Profile", displayMode: .inline)
                      
//            }
    }

    func countText(fullnameCount: Int, emailCount: Int, passwordCount: Int) -> Bool {
        if fullname.count >= fullnameCount && email.count >= emailCount && password.count >= passwordCount {
            return false
        } else {
            return true
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
