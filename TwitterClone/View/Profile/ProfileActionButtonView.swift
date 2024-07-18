//
//  ProfileActionBuktton.swift
//  TwitterClone
//
//  Created by 이상준 on 7/17/24.
//

import SwiftUI

struct ProfileActionButtonView: View {
    let isCurrentUser: Bool
    
    var body: some View {
        if isCurrentUser {
            Button(action: {}, label: {
                Text("Edit Profile")
                    .frame(width: 360, height: 40)
                    .background(.blue)
                    .foregroundStyle(.white)
            })
            .cornerRadius(20)
        } else {
            HStack {
                Button(action: {}, label: {
                    Text("Follow")
                        .frame(width: 180, height: 40)
                        .background(.blue)
                        .foregroundStyle(.white)
                })
                .cornerRadius(20)
                
                Button(action: {}, label: {
                    Text("Message")
                        .frame(width: 180, height: 40)
                        .background(.purple)
                        .foregroundStyle(.white)
                })
                .cornerRadius(20)
            }
        }
    }
}

#Preview {
    ProfileActionButtonView(isCurrentUser: false)
}
