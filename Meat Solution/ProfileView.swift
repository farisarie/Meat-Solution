//
//  ProfileView.swift
//  Meat Solution
//
//  Created by Erlangga Anugrah Arifin on 03/12/22.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    init() {
                let navBarAppearance = UINavigationBar.appearance()
                navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
              }

    var body: some View {
        NavigationView {
            GeometryReader { reader in
                ZStack(alignment: .top) {
                    Image("profileHeader")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .coordinateSpace(name: "profileHeaderBackground")
                        .frame(height: reader.size.height * (1/3), alignment: .top)

                        VStack {
                            Text("Meat Solution")
                                .font(.title)
                                .fontWeight(.bold)

                                .padding(.top, 40)
                            
                            Text(verbatim: "admin@metion.id")
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(.gray)
                            List {
                                NavigationLink(destination: EditProfileView()) {
                                    HStack {
                                        Image(systemName: "square.and.pencil")
                                        Text("Edit Profile")
                                    }
                                }
                                .listRowBackground(Color("profileBackgroundCard"))
                                NavigationLink(destination: EditAddressView()) {
                                    HStack {
                                        Image(systemName: "house.fill")
                                        Text("Edit Address")
                                    }
                                }
                                
                                .listRowSeparator(.hidden)
                                .listRowBackground(Color("profileBackgroundCard"))
                                NavigationLink(destination: HistoryView()) {
                                    HStack {
                                        Image(systemName: "tray.fill")
                                        Text("Order History")
                                    }
                                }
                                .listRowSeparator(.hidden)
                                .listRowBackground(Color("profileBackgroundCard"))

                            }
                            .padding(.bottom, 10)
                            .listRowBackground(Color("profileBackgroundCard"))
                            .listStyle(.plain)
                        }
                        .environment(\.defaultMinListRowHeight, reader.size.height * (1/15))
                        .frame(width: reader.size.width * 0.9, height: reader.size.height * (4/12.5))
                        .background(Color("profileBackgroundCard"))
                        .cornerRadius(20)
                        .offset(y: reader.size.height * 0.33)
                    Image("dummyUser")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: reader.size.width * 1/3, alignment: .top)
                        .offset(y: reader.size.height * 1/5)

                    Button(action: {
                        viewRouter.currentPage = .onBoarding
                                    }, label: {
                                        Text("Sign out")
                                            .font(.system(size: 18))
                                            .fontWeight(.bold)
                                            .foregroundColor(.red)
                                            .frame(width: reader.size.width * 0.9, height: reader.size.height * 0.06)
                                            .background(Color("profileLogoutButton"))
                                            .cornerRadius(10)
                                            .padding()
                                    })
                    .frame(maxHeight: .infinity, alignment: .bottom)
                }
            }
            .background(Color("profileBackground"))
            .edgesIgnoringSafeArea(.top)
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProfileView()
        }
        
    }
}
