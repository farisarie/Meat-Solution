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
            }
                    .onAppear {
//                          getProfile()
                        UITableViewCell.appearance().backgroundColor = UIColor.clear
                    }
                    .safeAreaInset(edge: .bottom, spacing: 0) {
                        ZStack {
                            Button(action: {
                                // save action
                                  presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Text("Save")
                                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 10/190)
                                .background(.green)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            })
                        }
                        .frame(height: UIScreen.main.bounds.height * 1/10)
                        .frame(maxWidth: .infinity)
                        .background(Color("profileBackground"))
                        .fontWeight(.bold)
                    }
        }
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
