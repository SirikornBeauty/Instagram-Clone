//
//  SigninView.swift
//  Instagram-Clone
//
//  Created by Smart on 2/11/2564 BE.
//

import SwiftUI

struct SigninView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Image("instagram-text-logo")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 220)
                    .foregroundColor(.black)
                
                VStack {
                    CustomTextField(placeholdher: Text("Email"), text: $email, imageName: "envelope")
                        .padding()
                        .padding(.horizontal, 32)
                    
                    CustomSecureField(placeholdher: Text("Password"), text: $password)
                        .padding()
                        .padding(.horizontal, 32)
                }
                
                HStack {
                    Spacer()
                    
                    NavigationLink(
                        destination: ForgotPasswordView(email: $email).navigationBarHidden(true),
                        label: {
                            Text("Forgot Password")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(.gray)
                                .padding(.top)
                                .padding(.trailing, 28)
                        }
                    )
                }
                .padding(.horizontal, 24)
                
                Button {
                    
                    viewModel.SignIn(withEmail: email, password: password)
                    
                } label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 50)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        .padding()
                }
                
                Spacer()
                
                NavigationLink(
                    destination: RegisterView().navigationBarHidden(true),
                    label: {
                        HStack {
                            Text("Don't have an account?")
                                .font(.system(size: 14, weight: .semibold))
                            
                            Text("Register")
                                .font(.system(size: 14))
                        }
                    }
                )
            }
        }
    }
}

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
            .environmentObject(AuthViewModel.shared)
    }
}
