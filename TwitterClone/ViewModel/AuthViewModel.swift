//
//  AuthViewModel.swift
//  TwitterClone
//
//  Created by 이상준 on 7/21/24.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    
    func login(email: String, password: String) {
        
    }
    
    func registerUser(email: String, password: String, username: String, fullname: String, profileImage: UIImage) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG Error \(error.localizedDescription)")
                return
            }
            
            print("DEBUG: Successfully signed up user..")
        }
    }
}
