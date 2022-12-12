//
//  DashboardView.swift
//  Meat Solution
//
//  Created by Caroline Chan on 05/12/22.
//

import SwiftUI

struct DashboardView: View {
    
    var body: some View {
        NavigationView {
            GeometryReader { reader in
                VStack(alignment: .leading) {
                    Text("Favorite Products")
                        .font(.title3.weight(.bold))
                        .foregroundColor(.accentColor)
//                    FavoriteScrollView()
                  ScrollView(.horizontal) {
                    HStack {
                      ForEach(favorites) { product in
                        NavigationLink(destination: DetailView(productDetail: product)) {
                          ZStack {
                            Image(product.name)
                              .resizable()
                            //                             .colorMultiply(.black)
                            //                             .brightness(0.5)
                            //                             .saturation(0.5)
                              .opacity(0.6)
                              .scaledToFit()
                            StrokeText(text: product.name.capitalized, width: 1, color: .white)
                              .foregroundColor(.black)
                              .font(.system(size: reader.size.height * 1/30, weight: .bold))
                              .padding(.horizontal, 20)
                          }
                        }
                        
                        
                          .frame(width: reader.size.width * 0.8, height: reader.size.height * 1/5)
//                          .background(.gray)
                          .border(Color("AccentColor"), width: 10)
                          .cornerRadius(15)
                        //                             .padding(.horizontal, geometry.size.width * 0.1)
                      }
                    }
                  }
                        .frame(height: reader.size.height * 1/5)
                    Text("All Products")
                        .font(.title3.weight(.bold))
                        .foregroundColor(.accentColor)
                    ProductScrollView()
                }
            }
            .padding(.horizontal)
            .navigationBarTitle("Dashboard", displayMode: .inline)
        }
    }
}

struct StrokeText: View {
  let text: String
  let width: CGFloat
  let color: Color
  
  var body: some View {
    ZStack{
      ZStack{
        Text(text).offset(x:  width, y:  width)
          .truncationMode(.tail)
          .lineLimit(1)
        Text(text).offset(x: -width, y: -width)
          .truncationMode(.tail)
          .lineLimit(1)
        Text(text).offset(x: -width, y:  width)
          .truncationMode(.tail)
          .lineLimit(1)
        Text(text).offset(x:  width, y: -width)
          .truncationMode(.tail)
          .lineLimit(1)
      }
      .foregroundColor(color)
      Text(text)
        .truncationMode(.tail)
        .lineLimit(1)
        .foregroundColor(Color("AccentColor"))
    }
  }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
