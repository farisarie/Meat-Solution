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
    @State var newPassword = ""
  @State var confirmNewPassword = ""
  @State var oldPassword = ""
  @State var currentPassword = UserDefaults.standard.string(forKey: "userPassword") ?? ""
  @State private var isShowingAlert = false
  @State private var alert = false
    @EnvironmentObject var userSettings: UserSettings
    

    @Environment(\.presentationMode) var presentationMode



    var body: some View {
        VStack {
            Form {

                Section(header: Text("User detail"), footer: Text("New Password field must be at least 8 characters to save.")) {
                    TextField("Fullname", text: $fullname)
                    .textInputAutocapitalization(.words)
                    TextField("Email", text: $email)
                    .textInputAutocapitalization(.never)
                    SecureField("Old Password", text: $oldPassword)
                  SecureField("New Password", text: $newPassword)
                  SecureField("Confirm New Password", text: $confirmNewPassword)
                }
            }
            .alert(isPresented: $alert) {
              if oldPassword == "" || newPassword == "" || confirmNewPassword == "" {
                return Alert(
                  title: Text("Error"),
                  message: Text("One of password fields still empty"),
                  dismissButton: .default(Text("Ok"))
                )
              } else if newPassword.count < 8 {
                return Alert(
                  title: Text("Error"),
                  message: Text("Old password is too short"),
                  dismissButton: .default(Text("Ok"))
                )
              } else if newPassword != confirmNewPassword {
                return Alert(
                  title: Text("Error"),
                  message: Text("New password and confirm password do not match"),
                  dismissButton: .default(Text("Ok"))
                )
              } else if oldPassword != currentPassword || oldPassword != currentPassword {
                return Alert(
                  title: Text("Error"),
                  message: Text("Old password do not match"),
                  dismissButton: .default(Text("Ok"))
                  )
              } else if currentPassword == newPassword || currentPassword == confirmNewPassword {
                return Alert(
                  title: Text("Error"),
                  message: Text("New password can not be same as old password"),
                  dismissButton: .default(Text("Ok"))
                )
              } else {
                return Alert(
                  title: Text("Success"),
                  message: Text("Profile changed successfully"),
                  dismissButton: .default(Text("Ok"))
                )
              }
            }
                    .safeAreaInset(edge: .bottom, spacing: 0) {
                        ZStack {
                            Button(action: {
                              alert.toggle()
                              if checkForm() == true {
                                UserSettings.setUser(fullname: fullname, email: email, password: newPassword)
                                                                  presentationMode.wrappedValue.dismiss()
                              }
//
                            }){
                                Text("Save")
                                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 10/190)
                                .background(checkForm() == true ? .green : .gray)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            }
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

    
    func getProfile() {
        fullname = UserDefaults.standard.string(forKey: "userFullname") ?? "User"
        email = UserDefaults.standard.string(forKey: "userEmail") ?? "user@email.com"
    }
  
  func checkForm() -> Bool {
    if oldPassword == "" || newPassword == "" || confirmNewPassword == "" {
      return false
      
    } else if newPassword.count < 8 {
      return false
    } else if newPassword != confirmNewPassword {
      return false
    } else if oldPassword != currentPassword || oldPassword != currentPassword {
      return false
    } else if currentPassword == newPassword || currentPassword == confirmNewPassword {
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
