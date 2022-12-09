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
    @EnvironmentObject var userSettings: UserSettings
    

    @Environment(\.presentationMode) var presentationMode



    var body: some View {
        VStack {
            Form {

                Section(header: Text("User detail"), footer: Text("Password field must be 8 characters or exceed to save.")) {
                    TextField("Fullname", text: $fullname)
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)
                    let _ = print(fullname)
                }
            }
                    .onAppear {
//                          getProfile()

                    }
                    .safeAreaInset(edge: .bottom, spacing: 0) {
                        ZStack {
                            Button(action: {
                                UserSettings.setUser(fullname: fullname, email: email, password: password)
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
        .onAppear {
            let _ = print("EdProf Called!")
            getProfile()
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
    
    func getProfile() {
        fullname = UserDefaults.standard.string(forKey: "userFullname") ?? "User"
        email = UserDefaults.standard.string(forKey: "userEmail") ?? "user@email.com"
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
