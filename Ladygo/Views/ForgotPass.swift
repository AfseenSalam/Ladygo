//
//  ForgotPass.swift
//  Ladygo
//
//  Created by Afseen Salam on 3/23/23.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
struct ForgotPass: View {
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
   
    var body: some View {
        NavigationView{
            ZStack{
               
                Color("Background").ignoresSafeArea()
                VStack{
                    Image(systemName: "person.badge.key.fill")
                        .resizable().aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                    
                    Text("FORGOT PASSWORD").fontWeight(.bold).padding(.bottom, 100.0)
                    
                    Text("Please enter the email below to get the password resetting email link")
                        .padding([.leading, .bottom, .trailing], 30.0)
                    
                    TextField("Email", text: $email)
                        .font(.system(size:25)).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 0.5).padding([.leading, .bottom, .trailing], 40.0)
                    
                    
                    Button("SEND") {
                        if self.email != ""{
                            Auth.auth().sendPasswordReset(withEmail: self.email){
                                (error) in
                                if error != nil{
                                    print(error!.localizedDescription)
                                }
                                
                            }
                        }
                    }.fontWeight(.bold).foregroundColor(self.color).background(RoundedRectangle(cornerRadius: 20)).foregroundColor(.blue)
                    Spacer()
                    

                }
            }
        }
    }
   
}
struct ForgotPass_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPass()
    }
}
