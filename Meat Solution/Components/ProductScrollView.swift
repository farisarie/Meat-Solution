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
            Color("Gray")
            
            ScrollView {
                VStack {
                    ForEach(0..<10) { _ in
                        ZStack {
                            Color.white
                            
                            HStack {
                                Image(systemName: "person")
                                    .resizable()
                                    .frame(width: 95, height: 95)
                                
                                Spacer()
                                
                                Text("Item")
                                    .font(.title)
                            }
                            .padding()
                        }
                        .frame(maxWidth: .infinity, maxHeight: 101)
                        .background(.white)
                        .cornerRadius(10)
                    }
                }
                .padding()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 350)
        .cornerRadius(20)
    }
}

struct ProductScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ProductScrollView()
    }
}
