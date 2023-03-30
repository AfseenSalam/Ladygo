////
//  CreateAccount.swift
//  Ladygo
//
//  Created by Afseen Salam on 3/23/23.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
struct CreateAccount: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State  var confirmEmail: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    @State var shouldShowAlert = false
    
    var body: some View {
        ZStack{
            Color.init(red: 0.678, green: 0.565, blue: 0.533)
                .ignoresSafeArea()
            VStack (spacing: 20 ) {
                Image("Logo")
                Text("Create An Account")
                    .font(.title)
                TextField("First Name", text: $firstName)
                    .padding(.leading, 10)
                    .frame(width: 317, height: 28)
                    .overlay(Rectangle()
                        .stroke(.black, lineWidth: 2))
                TextField("Last Name", text: $lastName)
                    .padding(.leading, 10)
                    .frame(width: 317, height: 28)
                    .overlay(Rectangle()
                        .stroke(.black, lineWidth: 2))
                TextField("Email", text: $email)
                    .padding(.leading, 10)
                    .frame(width: 317, height: 28)
                    .overlay(Rectangle()
                        .stroke(.black, lineWidth: 2))
                TextField("Confirm Email", text: $confirmEmail)
                    .padding(.leading, 10)
                    .frame(width: 317, height: 28)
                    .overlay(Rectangle()
                        .stroke(.black, lineWidth: 2))
                TextField("Password", text: $password)
                    .padding(.leading, 10)
                    .frame(width: 317, height: 28)
                    .overlay(Rectangle()
                        .stroke(.black, lineWidth: 2))
                TextField("Confirm Password", text: $confirmPassword)
                    .padding(.leading, 10)
                    .frame(width: 317, height: 28)
                    .overlay(Rectangle()
                        .stroke(.black, lineWidth: 2))
                Button {
                    Auth.auth().createUser(withEmail: email, password: password) { result, error in
                        if let error = error {
                            print(error.localizedDescription)
                            shouldShowAlert = true
                            return
                        }
                        
                        storeUserInformation()
                        
                    }
                    
                } label: {
                    Text("Create An Account")
                        .foregroundColor(.black)
                        .font(.system(size:12))
                        .frame(width: 122, height: 31)
                        .overlay(Rectangle()
                            .stroke(.black, lineWidth: 2)).alert(isPresented: $shouldShowAlert){Alert(title: Text("User already exist"))
                                
                                
                                
                            }
                }
            }
        }
    }
    
    
    private func storeUserInformation(){
        guard let uid = Auth.auth().currentUser?.uid else{return}
        let userData = ["firstName": self.firstName,"lastName": self.lastName,"email": self.email,"password": self.password,"uid":uid]
        Firestore.firestore().collection("users")
            .document(uid).setData(userData){ error in
                if let error = error{
                    print(error.localizedDescription)
                    return
                }else{
                    print("Success")
                }
                
            }       }
}
    struct CreateAccount_Previews: PreviewProvider {
        static var previews: some View {
            CreateAccount()
        }
    }

    
    
//    @State var color = Color.black.opacity(0.7)
//    @State var email = ""
//    @State var fname = ""
//    @State var lname = ""
//    @State var pass = ""
//    @State var repass = ""
//    @State var visible = false
//    @State var revisible = false
//    @State var shouldShowAlert = false
//    @State var StatusMessage = ""
//
//    var body: some View{
//        NavigationView{
//            ZStack{
//                Color("Background").ignoresSafeArea()
//                VStack{
//                    Image("LADY GO 1")
//                    Text("CREATE AN ACCOUNT").fontWeight(.bold)
//
//                    TextField("First Name", text: $fname)
//                        .font(.system(size:25)).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 0.5).padding([.leading, .bottom, .trailing], 30.0)
//                    TextField("Last Name", text: $lname)
//                        .font(.system(size:25)).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 0.5).padding([.leading, .bottom, .trailing], 30.0)
//                    TextField("Email", text: $email)
//                        .font(.system(size:25)).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 0.5).padding([.leading, .bottom, .trailing], 30.0)
//                    HStack(spacing: 15){
//                        VStack{
//                            if self.visible{
//                                TextField("Password", text: self.$pass)
//                            }
//                            else{
//                                SecureField("Password",text:self.$pass)
//                            }
//                        }
//                        Button(action:{
//                            self.visible.toggle()
//                        }){
//                            Image(systemName: self.visible ?"eye.slash.fill" : "eye.fill")
//                        }
//                    }.font(.system(size:25)).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 0.5).padding([.leading, .bottom, .trailing], 30.0)
//                    HStack(spacing: 15){
//                        VStack{
//                            if self.revisible{
//                                TextField("Confirm Password", text: self.$repass)
//                            }
//                            else{
//                                SecureField("Confirm Password",text:self.$repass)
//                            }
//                        }
//                        Button(action:{
//                            self.revisible.toggle()
//                        }){
//                            Image(systemName: self.revisible ?"eye.slash.fill" : "eye.fill")
//                        }
//                    }.font(.system(size:25)).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 0.5).padding([.leading, .bottom, .trailing], 30.0)
//
//                    Button("Register") {Auth.auth().createUser(withEmail: email, password: pass){result,error in
//                        if error != nil{
//
//                            print(error!.localizedDescription)
//                            shouldShowAlert = true
//
//                        }else{
//                            self.StatusMessage = "Logged In successfully\(result?.user.uid ?? "")"
//                            self.storeUserInformation()
//                        }
//
//
//                    }
//
//                    }.alert(isPresented: $shouldShowAlert){ Alert (title: Text("User already exist"))
//
//                    }
//                }
//            }
//
//
//        }
//
//    }
//    private func storeUserInformation(){
//        guard let uid = Auth.auth().currentUser?.uid else{return}
//        let userData = ["fname": self.fname,"lname": self.lname,"email": self.email,"pass": self.pass,"uid":uid]
//        Firestore.firestore().collection("users")
//            .document(uid).setData(userData){ error in
//                if let error = error{
//                    self.StatusMessage = "\(error.localizedDescription)"
//                    return
//                }else{
//                    print("Success")
//                }
//
//            }
//    }
//
//}
//
//
//struct CreateAccount_Previews: PreviewProvider {
//    static var previews: some View {
//        CreateAccount()
//    }
//}
//
