//
//  ContentView.swift
//  TwitterClone
//
//  Created by 이상준 on 7/7/24.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                NavigationView {
                    TabView {
                        FeedView()
                            .tabItem {
                                Image(systemName: "house")
                                Text("Home")
                            }
                        
                        SearchView()
                            .tabItem {
                                Image(systemName: "magnifyingglass")
                                Text("Search")
                            }
                        
                        ConversationsView()
                            .tabItem {
                                Image(systemName: "envelope")
                                Text("Messages")
                            }
                    }
                    .navigationTitle("Home")
                    .navigationBarItems(leading: Button(action: {
                        viewModel.signOut()
                    }, label: {
                        if let user = viewModel.user {
                            KFImage(URL(string: user.profileImageUrl))
                                .resizable()
                                .scaledToFill()
                                .clipped()
                                .frame(width: 32, height: 32)
                                .cornerRadius(16)
                        }
                    }))
                    .navigationBarTitleDisplayMode(.inline)
                }
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
