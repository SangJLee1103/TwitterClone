//
//  LoginView.swift
//  TwitterClone
//
//  Created by 이상준 on 7/19/24.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image("twitter-logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 220, height: 100)
                        .padding(.top, 88)
                        .padding(.bottom, 32)
                    
                    VStack(spacing: 20) {
                        CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundStyle(.white)
                        
                        CustomSecureField(text: $password, placeholder: Text("Password"))
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundStyle(.white)
                    }
                    .padding(.horizontal, 32)
                    
                    HStack {
                        Spacer()
                        
                        Button(action: { }, label: {
                            Text("Forgot Password?")
                                .font(.footnote)
                                .bold()
                                .foregroundStyle(.white)
                                .padding(.top, 16)
                                .padding(.trailing, 32)
                        })
                    }
                    
                    Button(action: { }, label: {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundStyle(.blue)
                            .frame(width: 330, height: 50)
                            .background(.white)
                            .clipShape(.capsule)
                            .padding()
                    })
                    
                    Spacer()
                    
                    NavigationLink(destination: RegistrationView().navigationBarBackButtonHidden(true)) {
                        HStack {
                            Text("Don't have an account?")
                                .font(.system(size: 14))
                            
                            Text("Sign Up")
                                .font(.system(size: 14, weight: .semibold))
                        }
                        .foregroundStyle(.white)
                        .padding(.bottom, 40)
                    }
                }
            }
            .background(Color(#colorLiteral(red: 0.1137254902, green: 0.6320485473, blue: 0.9531270862, alpha: 1)))
            .ignoresSafeArea()
        }
    }
}


#Preview {
    LoginView()
}
