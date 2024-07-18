//
//  UserProfileView.swift
//  TwitterClone
//
//  Created by 이상준 on 7/17/24.
//

import SwiftUI

struct UserProfileView: View {
    @State var selectedFilter: TweetFilterOptions = .tweets
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
                    .padding()
                
                FilterButtonView(selectedOption: $selectedFilter)
                    .padding()
                
                ForEach(0..<9) { tweet in
                    TweetCell()
                }
            }
            .navigationTitle("batman")
        }
    }
}

#Preview {
    UserProfileView()
}
