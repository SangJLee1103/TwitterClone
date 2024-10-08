//
//  ProfileActionBuktton.swift
//  TwitterClone
//
//  Created by 이상준 on 7/17/24.
//

import SwiftUI

struct ProfileActionButtonView: View {
    @ObservedObject var viewModel: ProfileViewModel
    
    var body: some View {
        if viewModel.user.isCurrentUser {
            Button(action: {}, label: {
                Text("Edit Profile")
                    .frame(width: 360, height: 40)
                    .background(.blue)
                    .foregroundStyle(.white)
            })
            .cornerRadius(20)
        } else {
            HStack {
                Button(action: {
                    viewModel.user.isFollowed ? viewModel.unfollow() : viewModel.follow()
                }, label: {
                    Text(viewModel.user.isFollowed ? "Following" : "Follow")
                        .frame(width: 180, height: 40)
                        .background(.blue)
                        .foregroundStyle(.white)
                })
                .cornerRadius(20)
                
                NavigationLink(destination: ChatView(user: viewModel.user), label: {
                    Text("Message")
                        .frame(width: 130, height: 40)
                        .background(Color.purple)
                        .foregroundStyle(.white)
                })
                .cornerRadius(20)
            }
        }
    }
}
