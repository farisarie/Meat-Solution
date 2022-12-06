//
//  ProductScrollView.swift
//  Meat Solution
//
//  Created by Caroline Chan on 05/12/22.
//

import SwiftUI

struct ProductScrollView: View {
    var body: some View {
        ZStack {
            Color("AccentColor")
            
            ScrollView {
                VStack {
                    ForEach(products, id: \.self) { product in
                        ZStack {
                            Color.white
                            
                            HStack {
                                Image(product.name)
                                    .resizable()
                                    .frame(width: 150, height: 100)
                                
                                Spacer()
                                
                                VStack(alignment: .trailing) {
                                    Text(product.name.capitalized)
                                        .multilineTextAlignment(.trailing)
                                        .font(.title2.weight(.bold))
                                    
                                    Text("Rp \(product.price)")
                                        .foregroundColor(.accentColor)
                                        .fontWeight(.semibold)
                                }
                            }
                            .padding()
                        }
                        .frame(maxWidth: .infinity, maxHeight: 170)
                        .background(.white)
                        .cornerRadius(10)
                    }
                }
                .padding()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .cornerRadius(20)
    }
}

struct ProductScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ProductScrollView()
    }
}
