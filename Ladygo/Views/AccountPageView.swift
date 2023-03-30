//
//  AccountPageView.swift
//  Ladygo
//
//  Created by Afseen Salam on 3/28/23.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

struct AccountPageView: View {
    @State var shouldShowLogoutOption = false
    @Binding var isUserCurrentlyLoggedOut:Bool
    var body: some View {
        NavigationView{
            ZStack{
                Color("Background").ignoresSafeArea()
                VStack{
                    Text("Account Details")
                        .frame(width: 339, height: 53)
                        .font(.title)
                        .overlay(Rectangle()
                            .stroke(.black, lineWidth: 2))
                        .background(Color("Green"))
                    
                    
                    Image("Profile")
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                    Text("Hi! My name is Abi and I have been working my way through Europe")
                        .padding(.leading, 10)
                        .frame(width: 313, height: 83, alignment: .leading)
                        .overlay(Rectangle()
                            .stroke(.black, lineWidth: 2))
                        .foregroundColor(.black)
                        .background(Color("Green"))
                    
                        .padding(10)
                    NavigationLink("Update Account", destination: AccountDetailView()).padding(.bottom).foregroundColor(.black).bold()
                    
                    NavigationLink("My Review", destination: MyReviewPage()).padding(.bottom).foregroundColor(.black).bold()
                    
                    Button{
                        shouldShowLogoutOption.toggle()
                        
                    } label:{
                        Text("Sign Out")
                            .frame(width: 200, height: 38)
                            .foregroundColor(.black)
                            .bold()
                            .background(Color("Green"))
                            .cornerRadius(10)
                    }
                    
                }.padding()
                    .actionSheet(isPresented: $shouldShowLogoutOption) {
                        .init(title: Text("Setting"),message: Text("Are you sure want to logout?"),buttons: [.destructive(Text("Sign Out"),action:{
                            print("Sign out")
                            try? Auth.auth().signOut()
                            self.isUserCurrentlyLoggedOut = false
                        }),.cancel()])
                    }
            }
        }
        
                                    }   }

struct AccountPageView_Previews: PreviewProvider {
    @State static var isUserCurrentlyLoggedOut = false
    static var previews: some View {
        
        AccountPageView(isUserCurrentlyLoggedOut: $isUserCurrentlyLoggedOut)
    }
}
