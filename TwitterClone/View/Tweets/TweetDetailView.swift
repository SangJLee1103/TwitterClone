//
//  TweetDetailView.swift
//  TwitterClone
//
//  Created by 이상준 on 8/14/24.
//

import SwiftUI
import Kingfisher

struct TweetDetailView: View {
    let tweet: Tweet
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                KFImage(URL(string: tweet.profileImageUrl))
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(28)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(tweet.fullname)
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("@\(tweet.username)")
                        .font(.system(size: 14))
                        .foregroundStyle(.gray)
                }
            }
            
            Text(tweet.caption)
                .font(.system(size: 22))
            
            Text("7:22 PM • 05/01/2024")
                .font(.system(size: 14))
                .foregroundStyle(.gray)
            
            Divider()
            
            HStack(spacing: 12) {
                HStack(spacing: 4) {
                    Text("0")
                        .font(.system(size: 14, weight:  .semibold))
                    
                    Text("Retweets")
                        .font(.system(size: 14))
                        .foregroundStyle(.gray)
                }
                
                HStack(spacing: 4) {
                    Text("\(tweet.likes)")
                        .font(.system(size: 14, weight:  .semibold))
                    
                    Text("Likes")
                        .font(.system(size: 14))
                        .foregroundStyle(.gray)
                }
            }
            Divider()
            TweetActionsView(tweet: tweet)
            
            Spacer()
        }.padding()
    }
}
