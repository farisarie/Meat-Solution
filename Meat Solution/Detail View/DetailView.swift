import SwiftUI

struct DetailView: View {
    
    let productDetail: Product
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>

    var body: some View {
//        NavigationView {
            VStack(alignment: .leading) {
                Image(productDetail.name)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.size.width , height: 280)
                        .background(Color(hex: "#AB3136"))

                TextView(productDetail: productDetail)
                let _ = print("\(productDetail.name)\n\(productDetail.price)\n\(productDetail.desc)\n\n")
                Spacer()
            }
            .safeAreaInset(edge: .bottom, spacing: 0) {
                ZStack {
                    NavigationLink(
                        destination: CheckoutView(productDetail: productDetail)) {
                                              Text("\(Image(systemName: "cart")) Buy Now")
                                                      .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 10/190)
                                                      .background(Color(hex: "#AB3136"))
                                                      .cornerRadius(10)
                                                      .foregroundColor(.white)
                                                      .fontWeight(.bold)
                                    }
                }
                .frame(height: UIScreen.main.bounds.height * 1/10)
                .frame(maxWidth: .infinity)

                .fontWeight(.bold)
            }
            .edgesIgnoringSafeArea(.top)
//            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
                        .navigationBarItems(leading: Button(action : {
                            self.mode.wrappedValue.dismiss()
                        }){
                            Circle()
                                .fill(Color.white)
                                .frame(width: UIScreen.main.bounds.width * 0.1)
                                .overlay(Image(systemName: "arrow.left"))
                                .foregroundColor(Color(hex: "#AB3136"))
                        })
//        }
    }
}


struct TextView: View {
    let productDetail: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text(productDetail.name.capitalized)
                .font(.title)
                .bold()
            Text("Rp \(productDetail.price)")
                .font(.body)
                .padding(.top, -10)
            DividerView()
          ScrollView(.vertical) {
            Text(productDetail.desc)
              .font(.callout)
          }
            
        }
        .foregroundColor(Color(hex: "#AB3136"))
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 25)
    }
}

struct DividerView: View {
    var body: some View {
        Divider()
            .frame(maxWidth: .infinity, alignment: .leading)

    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
      DetailView(productDetail: Product(id: 1, name: "chuck", desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 20000))
    }
}
