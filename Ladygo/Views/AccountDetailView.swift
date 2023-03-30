//
//  AccountDetailView.swift
//  Ladygo
//
//  Created by Afseen Salam on 3/28/23.
//

import SwiftUI

struct AccountDetailView: View {
    @State var firstName: String = ""
      @State var lastName: String = ""
      @State var bio: String = ""
      @State var month: String = ""
      @State var day: String = ""
      @State var year: String = ""
      var body: some View {
        ZStack{
          Color.init(red: 0.678, green: 0.565, blue: 0.533)
            .ignoresSafeArea()
          VStack{
            Text("Account Details")
              .frame(width: 339, height: 53)
              .font(.title)
              .overlay(Rectangle()
                .stroke(.black, lineWidth: 2))
              .background(Color("Green"))
              HStack {
                  Spacer()
                  Button("EDIT") {
                      
                  }.foregroundColor(.black).bold().padding(.horizontal, 10).frame(width: 80, height: 36)
              }
              
            Image("Profile")
              .frame(width: 200, height: 200)
              .clipShape(Circle())
            TextField("Hi! My name is Abi and I have been working my way through Europe", text:$bio)
              .padding(.leading, 10)
              .frame(width: 313, height: 83, alignment: .leading)
               .overlay(Rectangle()
              .stroke(.black, lineWidth: 2))
               .foregroundColor(.black)
               .background(Color("Green"))
            TextField ("First Name", text: $firstName )
              .padding(.leading, 10)
              .frame(width: 313, height: 28, alignment: .leading)
               .overlay(Rectangle()
              .stroke(.black, lineWidth: 2))
               .background(Color("Green"))
            TextField ("Last Name", text: $lastName )
              .padding(.leading, 10)
              .frame(width: 313, height: 28, alignment: .leading)
               .overlay(Rectangle()
              .stroke(.black, lineWidth: 2))
               .background(Color("Green"))
            HStack (spacing: 20){
              TextField ("Month", text: $month )
                .padding(.leading, 10)
                .frame(width: 94, height: 36)
                 .overlay(Rectangle()
                .stroke(.black, lineWidth: 2))
                 .background(Color("Green"))
              TextField ("Day", text: $day )
                .padding(.leading, 10)
                .frame(width: 94, height: 36)
                 .overlay(Rectangle()
                .stroke(.black, lineWidth: 2))
                 .background(Color("Green"))
              TextField ("Year", text: $year )
                .padding(.leading, 10)
                .frame(width: 94, height: 36)
                 .overlay(Rectangle()
                .stroke(.black, lineWidth: 2))
                 .background(Color("Green"))
            }
            Button {
            } label: {
              Text("Submit")
                .frame(width: 200, height: 38)
                .foregroundColor(.black)
                .bold()
                .background(Color("Green"))
                .cornerRadius(10)
            }
            .padding(.top, 20.0)
          }
        }
      }
    }


struct AccountDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailView()
    }
}
