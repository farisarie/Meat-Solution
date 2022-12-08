//
//  EditAddressView.swift
//  Meat Solution
//
//  Created by Erlangga Anugrah Arifin on 05/12/22.
//

import SwiftUI

struct EditAddressView: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {

            VStack(spacing: 0) {
                AddressForm()
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
            
            
            .navigationBarTitle("Edit Address", displayMode: .inline)
        


    }
}

struct AddressForm: View {
    
    @State private var fullname = ""
    @State private var email = ""
    @State private var phone = ""
    @State private var address = ""
    @State private var city = ""
    @State private var postcode = ""
    
    var body: some View {
        Form {
            Section(header: Text("Recipient"), footer: Text("")) {
                TextField("Fullname", text: $fullname)
                TextField("Email", text: $email)
                TextField("Phone Number", text: $phone)
            }
            Section(header: Text("Deliver to")) {
                TextField("Address", text: $address)
                TextField("City", text: $city)
                TextField("Postal Code", text: $postcode)
            }

        }
    }
}

struct EditAddressView_Previews: PreviewProvider {
    static var previews: some View {
        EditAddressView()
    }
}
