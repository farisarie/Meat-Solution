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
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading){
                ForEach(payments, id: \.self) { payment in
                    Button() {
                        self.selectedPayment = payment.paymentMethod
                        self.isClicked = true
                    } label: {
                        HStack {
                            Image(systemName: payment.symbol)
                                .resizable()
                                .frame(width: 40, height: 40)
                                .padding(.horizontal, 25)
                                .foregroundColor(isClicked && selectedPayment == payment.paymentMethod ? Color("AccentColor"): Color.secondary)
                            
                            Spacer()
                            
                            Text(payment.paymentMethod)
                                .font(.headline.weight(.regular))
                                .foregroundColor(isClicked && selectedPayment == payment.paymentMethod ? Color("AccentColor"): Color.secondary)
                            
                            Spacer()
                            Spacer()
                        }
                        .frame(maxWidth: .infinity, maxHeight: 70)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(isClicked && selectedPayment == payment.paymentMethod ? Color("AccentColor"): Color.secondary, lineWidth: 2)
                        )
                        .padding(.horizontal)
                    }
                }
                
                Spacer()
                
                NavigationLink(destination: OrderHistoryView()) {
                    Text("Process to Payment")
                        .font(.title3.weight(.bold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 54)
                        .background(Color("AccentColor"))
                        .cornerRadius(16)
                        .padding(.horizontal)
                }
            }
            .navigationTitle("Payment")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
    }
}
