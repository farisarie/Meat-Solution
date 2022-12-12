//
//  FavoriteScrollView.swift
//  Meat Solution
//
//  Created by Caroline Chan on 05/12/22.
//

import SwiftUI
//reader.size.height * 1/5
struct FavoriteScrollView: View {
    var body: some View {
//        ScrollView(.horizontal) {
//            HStack(spacing: 20) {
//                GeometryReader { reader in
//                ForEach(favorites, id: \.self) { favorite in
//                    NavigationLink(destination: DetailView(productDetail: favorite)) {
//
//                            ZStack {
//                                Image(favorite.name)
//                                    .resizable()
//                                    .frame(width: 350, height: 200)
//                                    .cornerRadius(20)
//                                    .overlay(
//                                        RoundedRectangle(cornerRadius: 20)
//                                            .stroke(Color("AccentColor"), lineWidth: 3)
//                                    )
//
//                                Text(favorite.name.capitalized)
//                                    .font(.title.weight(.bold))
//                                    .foregroundColor(.white)
//                            }
//                        }
////                        .frame(maxHeight: 206)
//                    }
//                }
                GeometryReader { geometry in
                     ScrollView(.horizontal) {
                       HStack {
                         ForEach(favorites) { product in
                           Image(product.name)
                             .resizable()
//                             .colorMultiply(.black)
//                             .brightness(0.5)
//                             .saturation(0.5)
                             .opacity(0.7)
                             .scaledToFill()
                             .overlay(
                              StrokeText(text: product.name.capitalized, width: 1, color: .black)
                                .foregroundColor(.black)
                                .font(.system(size: geometry.size.height * 1/40, weight: .bold))
                             )
                             .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 1/3)
                             .background(.gray)
                             .border(.gray, width: 5)
                             .cornerRadius(15)
//                             .padding(.horizontal, geometry.size.width * 0.1)
                         }
                       }
                     }
                   }
//            }
//        }
    }
}



struct FavoriteScrollView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteScrollView()
    }
}
