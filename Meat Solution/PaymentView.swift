//
//  PaymentView.swift
//  Meat Solution
//
//  Created by Caroline Chan on 10/12/22.
//

import SwiftUI

struct PaymentView: View {
  @State private var selectedPayment: String = ""
  @State private var isClicked: Bool = false
  @State private var alert = false
  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

  var body: some View {
    VStack(alignment: .leading) {
      ForEach(payments, id: \.self) { payment in
        Button {
          self.selectedPayment = payment.paymentMethod
          self.isClicked = true
        } label: {
          HStack {
            Image(systemName: payment.symbol)
                .resizable()
                .frame(width: 40, height: 40)
                .padding(.horizontal, 25)

            Spacer()
            Text(payment.paymentMethod)
                .font(.headline.weight(.regular))
            Spacer()
            Spacer()
          }
              .foregroundColor(isClicked && selectedPayment == payment.paymentMethod ? Color("AccentColor") : Color.secondary)
              .frame(maxWidth: .infinity, maxHeight: 70)
              .overlay(
                      RoundedRectangle(cornerRadius: 8)
                          .stroke(isClicked && selectedPayment == payment.paymentMethod ? Color("AccentColor") : Color.secondary, lineWidth: 2)
              )
              .padding(.horizontal)
        }
      }
      Spacer()
    }
        .navigationTitle("Payment Method")
        .alert(isPresented: $alert) {
          Alert(
                  title: Text("Success"),
                  message: Text("Thank you for shopping at Meat Solution!"),
                  dismissButton: .default(Text("Ok"))
          )
        }
        .safeAreaInset(edge: .bottom, spacing: 0) {
          ZStack {
            Button(action: {
              alert.toggle()
              NavigationUtil.popToRootView()
            }) {

              Text("Place Order")
                  .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 10 / 190)
                  .background(selectedPayment != "" ? Color("AccentColor") : Color.gray)
                  .cornerRadius(10)
                  .foregroundColor(.white)
                  .fontWeight(.bold)
            }
          }
              .disabled(selectedPayment == "" ? true : false)
              .frame(height: UIScreen.main.bounds.height * 1 / 10)
              .frame(maxWidth: .infinity)
              .fontWeight(.bold)
        }
  }
}

struct PaymentView_Previews: PreviewProvider {
  static var previews: some View {
    PaymentView()
  }
}
