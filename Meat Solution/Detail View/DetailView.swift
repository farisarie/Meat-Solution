//
//  DetailView.swift
//  Restart
//
//  Created by yoga arie on 04/12/22.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            ZStack {
                Image("meat")
                    .ignoresSafeArea(.all, edges: .all)
            }
            Text("Wagyu")
                .font(.title)
                .bold()
                .foregroundColor(Color(hex: "#AB3136"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 25)
            
            Text("COW • MEDIUM RARE")
                .font(.body)
                .foregroundColor(Color(hex: "#AB3136"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 25)
            
            Text("Wagyu beef contains a higher percentage of omega-3 and omega-6 fatty acids and more monounsaturated fats than other beef. This soft fat has a low melting point and not only creates a wonderful texture but also holds most of the flavour")
                .font(.callout)
                .foregroundColor(Color(hex: "#AB3136"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 25)
            
            Divider()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 25)
            
            
            Spacer()
            
            Button(action: {
            }) {
              Text("Add To Cart")
                    .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
            }
            .background(Color(hex: "#AB3136"))
            .cornerRadius(20)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 120)
            .buttonStyle(.bordered)
            .foregroundColor(.white)
            
            .controlSize(.large)
            .padding()
           
            
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
