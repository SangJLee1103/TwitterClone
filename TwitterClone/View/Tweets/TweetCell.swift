//
//  TweetCell.swift
//  TwitterClone
//
//  Created by 이상준 on 7/13/24.
//

import SwiftUI
import Kingfisher

struct TweetCell: View {
    let tweet: Tweet
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                KFImage(URL(string: tweet.profileImageUrl))
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(56 / 2)
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(tweet.fullname)
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundStyle(.black)
                        
                        Text("@\(tweet.username) •")
                            .foregroundStyle(.gray)
                        
                        Text(tweet.timestampString)
                            .foregroundStyle(.gray)
                    }
                    Text(tweet.caption)
                        .foregroundStyle(.black)
                }
            }
            .padding(.bottom)
            .padding(.trailing)
            
            TweetActionsView(tweet: tweet)
            Divider()
        }
        .padding(.leading, -16)
    }
}
