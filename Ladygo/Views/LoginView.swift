////
////  LoginView.swift
////  Ladygo
////
////  Created by Afseen Salam on 3/22/23.
////
//
import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State var visible = false
    @State var shouldShowLoginAlert = false
    @Binding var isUserCurrentlyLoggedOut:Bool
    private func isValidPassword(_ password: String) -> Bool {
        let passwordRegex = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])(?=.*[A-Z]).{6,}$")
        return passwordRegex.evaluate(with:password)
    }
    var body: some View {
        ZStack{
            Color.init(red: 0.678, green: 0.565, blue: 0.533)
                .ignoresSafeArea()
            VStack {
                Image("LADY GO 1")
                VStack{
                    HStack {
                        Image(systemName: "mail")
                        TextField("Email", text:$email)
                            .frame(width: 184, height: 37)
                        if(email.count != 0 ){
                            Image(systemName: "checkmark")
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        }
                    }
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.black)
                    )
                    
                    HStack {
                        Image(systemName: "lock")
                        SecureField("Password", text:$password)
                            .frame(width: 184, height: 37)
                        if(password.count != 0){
                            Image(systemName: isValidPassword(password) ? "checkmark" : "xmark")
                                .fontWeight(.bold)
                                .foregroundColor(isValidPassword(password) ? .green : .red)
                        }
                    }
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.black)
                    )
                    .padding()
                    VStack {
                        Button {
                            login()
                        }
                    label: {
                        Text("Sign In")
                            .frame(width: 93, height: 38)
                            .foregroundColor(.black)
                            .bold()
                            .background(RoundedRectangle(cornerRadius: 10)).alert (isPresented: $shouldShowLoginAlert){
                                Alert(title: Text("Invalid email and Password"))
                            }
                       
                }
                
                    HStack (spacing: 70){
                        NavigationLink("Create An Account", destination: CreateAccount())
                            .foregroundColor(.black)
                        
                        NavigationLink("Forgot Password", destination: ForgotPass())
                            .foregroundColor(.black)
                    }
                }
                }
            }
        }
        
    }
    private func login(){
        Auth.auth().signIn(withEmail: email,password : password){result,error in
            if error != nil{
                print(error!.localizedDescription)
                
                self.shouldShowLoginAlert = true
                
                return
            }else{
                
                self.isUserCurrentlyLoggedOut = true
            }
        }
        
    }
}
struct LoginView_Previews: PreviewProvider {
    @State static var isUserCurrentlyLoggedOut : Bool = false
    static var previews: some View {
        LoginView(isUserCurrentlyLoggedOut: $isUserCurrentlyLoggedOut)
    }
}
