import SwiftUI

struct DetailView: View {
    
    let productDetail: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            ImageView(productDetail: productDetail)
            TextView(productDetail: productDetail)
            DividerView()
            Spacer()
            Button(action: {}) {
                Text("Add To Cart")
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.bold)
            }
            .background(Color(hex: "#AB3136"))
            .cornerRadius(20)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 110)
            .buttonStyle(.bordered)
            .foregroundColor(.white)
            .controlSize(.large)
            .padding()
        }
    }
}

struct ImageView: View {
    let productDetail: Product
    var body: some View {
        ZStack {
            Image("meat")
                .ignoresSafeArea(.all, edges: .all)
                .frame(width: 40, height: 40)
        }
    }
}

struct TextView: View {
    let productDetail: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text(productDetail.name)
                .font(.title)
                .bold()
                .foregroundColor(Color(hex: "#AB3136"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 25)
            Text("COW • RAW")
                .font(.body)
                .foregroundColor(Color(hex: "#AB3136"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 25)
            Text(productDetail.desc)
                .font(.callout)
                .foregroundColor(Color(hex: "#AB3136"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 25)
        }
    }
}

struct DividerView: View {
    var body: some View {
        Divider()
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 25)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(productDetail: Product(name: "Meat", desc: "Meatology", price: 20000))
    }
}
