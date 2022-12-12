//
//  CheckoutView.swift
//  Meat Solution
//
//  Created by Erlangga Anugrah Arifin on 09/12/22.
//

import SwiftUI
import Combine

struct CheckoutView: View {

  @State var fullname = ""
  @State var email = ""
  @State var phone = ""
  @State var address = ""
  @State var city = ""
  @State var postcode = ""
  @State var quantity = 1
  @State var input = ""
  @State private var selectedMeat = 0
  @State private var selectedPacking = 0
  @State private var selectedCourier = "JNE"
  let meatOptions = ["Potong Kecil", "Potong Dadu", "Tanpa Potong"]
  let packingOptions = ["Vakum Plastik", "Tray Styrofoam Wrap", "Tray Mika Wrap", "Tray Mika Vakum", "Plastik Tanpa Vakum"]
  let courierChoices = ["JNE": 35_000, "JNT": 37_000, "SiCepat": 30_000, "Wahana": 33_000, "Pos Indonesia": 36_000, "Ninja Express": 32_000, "TIKI": 38_000]
  let productDetail: Product

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
            .textInputAutocapitalization(.words)
        TextField("City", text: $city)
            .textInputAutocapitalization(.words)
        TextField("Postal Code", text: $postcode)
            .keyboardType(.numberPad)
        Picker(selection: $selectedCourier, label: Text("Courier")) {
          ForEach(courierChoices.keys.sorted(), id: \.self) { courier in
            Text(courier).tag(courier)
          }
        }
      }
      Section(header: Text("Your Order")) {
        VStack {
          HStack {
            Image(productDetail.name)
                .resizable()
                .frame(width: 50, height: 50)
                .scaledToFill()
                .padding(.vertical)
            VStack(alignment: .leading) {
              Text(productDetail.name.capitalized)
                  .multilineTextAlignment(.leading)
                  .lineLimit(2)
                  .fontWeight(.bold)
              Text("Rp \(productDetail.price)")
            }
            Spacer()
            HStack {
              Text("x\(quantity)")
                  .toolbar {
                    ToolbarItem(placement: .keyboard) {
                      Button("Done") {
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                      }
                    }
                  }
                  .frame(width: 30)
                  .textFieldStyle(.roundedBorder)
                  .keyboardType(.numberPad)
              Stepper("", value: $quantity, in: 1...12)
                  .fixedSize()
            }
          }
        }
        Picker("Tipe kemasan", selection: $selectedPacking) {
          ForEach(0..<packingOptions.count) { index in
            Text(packingOptions[index])
          }
              .frame(maxWidth: .infinity)
        }
        HStack {
          VStack(alignment: .leading, spacing: 5) {
            HStack {
              Image(systemName: "bag")
              Text("Rincian Pembayaran")
                  .fontWeight(.bold)
            }
            HStack {
              Text("Subtotal belanja")
              Spacer()
              Text("Rp \(productDetail.price * quantity)")
            }
            HStack {
              Text("Ongkos kirim")
              Spacer()
              Text("Rp \(courierChoices[selectedCourier] ?? 0)")
            }
            HStack {
              Text("Biaya administrasi")
              Spacer()
              Text("Rp 1,000")
            }
            HStack {
              Text("Total pembayaran")
                  .font(.title3)
                  .fontWeight(.bold)
              Spacer()
              Text("Rp \((productDetail.price * quantity) + (courierChoices[selectedCourier] ?? 0) + 1_000)")
                  .font(.title3)
                  .fontWeight(.bold)
            }
          }
        }
      }
    }
        .safeAreaInset(edge: .bottom, spacing: 0) {
          ZStack {
            NavigationLink(
                    destination: PaymentView()) {
              Text("Select Payment \(Image(systemName: "arrow.right"))")
                  .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 10 / 190)
                  .background(Color(hex: "#AB3136"))
                  .cornerRadius(10)
                  .foregroundColor(.white)
                  .fontWeight(.bold)
            }
          }
              .onTapGesture {
                UserSettings.setDeliverTo(recName: fullname, recEmail: email, recPhone: phone, address: phone, city: city, postal: postcode)
              }
              .frame(height: UIScreen.main.bounds.height * 1 / 10)
              .frame(maxWidth: .infinity)
              .background(Color("profileBackground"))
              .fontWeight(.bold)
        }
        .onAppear {
          UITableView.appearance().backgroundColor = .clear
          fullname = UserDefaults.standard.string(forKey: "recName") ?? ""
          email = UserDefaults.standard.string(forKey: "recEmail") ?? ""
          phone = UserDefaults.standard.string(forKey: "recPhone") ?? ""
          address = UserDefaults.standard.string(forKey: "desAddress") ?? ""
          city = UserDefaults.standard.string(forKey: "desCity") ?? ""
          postcode = UserDefaults.standard.string(forKey: "desPostal") ?? ""
        }
        .navigationTitle("Checkout")
  }
}

struct CheckoutView_Previews: PreviewProvider {
  static var previews: some View {
    CheckoutView(productDetail: Product(id: 1, name: "Beef Patty", desc: "Lorem ipsum", price: 10000000))
  }
}
