//
//  EditAddressView.swift
//  Meat Solution
//
//  Created by Erlangga Anugrah Arifin on 05/12/22.
//

import SwiftUI

struct EditAddressView: View {

  @Environment(\.presentationMode) var presentationMode
  @State var fullname = ""
  @State var email = ""
  @State var phone = ""
  @State var address = ""
  @State var city = ""
  @State var postcode = ""

  var body: some View {
    VStack(spacing: 0) {
      Form {
        Section(header: Text("Recipient"), footer: Text("")) {
          TextField("Fullname", text: $fullname)
            .textInputAutocapitalization(.words)
          TextField("Email", text: $email)
            .textInputAutocapitalization(.never)
          TextField("Phone Number", text: $phone)
            .keyboardType(.phonePad)
        }
        Section(header: Text("Deliver to")) {
          TextField("Address", text: $address)
            .textInputAutocapitalization(.words)
          TextField("City", text: $city)
            .textInputAutocapitalization(.words)
          TextField("Postal Code", text: $postcode)
            .keyboardType(.numberPad)
        }
          .onAppear {
            fullname = UserDefaults.standard.string(forKey: "recName") ?? ""
            email = UserDefaults.standard.string(forKey: "recEmail") ?? ""
            phone = UserDefaults.standard.string(forKey: "recPhone") ?? ""
            address = UserDefaults.standard.string(forKey: "desAddress") ?? ""
            city = UserDefaults.standard.string(forKey: "desCity") ?? ""
            postcode = UserDefaults.standard.string(forKey: "desPostal") ?? ""
          }
      }
    }
      .safeAreaInset(edge: .bottom, spacing: 0) {
        ZStack {
          Button(action: {
            UserSettings.setDeliverTo(recName: fullname, recEmail: email, recPhone: phone, address: phone, city: city, postal: postcode)
            presentationMode.wrappedValue.dismiss()
          }, label: {
            Text("Save")
              .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 10 / 190)
              .background(.green)
              .cornerRadius(10)
              .foregroundColor(.white)
              .fontWeight(.bold)
          })
        }
          .frame(height: UIScreen.main.bounds.height * 1 / 10)
          .frame(maxWidth: .infinity)
          .background(Color("profileBackground"))
          .fontWeight(.bold)
      }
      .navigationBarTitle("Edit Address", displayMode: .inline)
  }
}

struct AddressForm: View {

  @State var fullname = ""
  @State var email = ""
  @State var phone = ""
  @State var address = ""
  @State var city = ""
  @State var postcode = ""

  var body: some View {
    Form {
      Section(header: Text("Recipient"), footer: Text("")) {
        TextField("Fullname", text: $fullname)
          .textInputAutocapitalization(.words)
        TextField("Email", text: $email)
          .textInputAutocapitalization(.never)
        TextField("Phone Number", text: $phone)
          .keyboardType(.phonePad)
      }
      Section(header: Text("Deliver to")) {
        TextField("Address", text: $address)
        TextField("City", text: $city)
        TextField("Postal Code", text: $postcode)
      }
        .onAppear {
          fullname = UserDefaults.standard.string(forKey: "recName") ?? ""
          email = UserDefaults.standard.string(forKey: "recEmail") ?? ""
          phone = UserDefaults.standard.string(forKey: "recPhone") ?? ""

          address = UserDefaults.standard.string(forKey: "desAddress") ?? ""
          city = UserDefaults.standard.string(forKey: "desCity") ?? ""
          postcode = UserDefaults.standard.string(forKey: "desPostal") ?? ""
        }
    }
  }
}

struct EditAddressView_Previews: PreviewProvider {
  static var previews: some View {
    EditAddressView()
  }
}
