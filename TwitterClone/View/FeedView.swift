//
//  FeedView.swift
//  TwitterClone
//
//  Created by 이상준 on 7/13/24.
//

import SwiftUI

struct FeedView: View {
    @State var isShowingNewTweetView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                VStack {
                    ForEach(0..<20) { _ in
                        TweetCell()
                    }
                }.padding()
            }
            
            Button(action: { isShowingNewTweetView.toggle() }, label: {
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 32, height: 32)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundStyle(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $isShowingNewTweetView) {
                NewTweetView(isPresented: $isShowingNewTweetView)
            }
        }
    }
}

#Preview {
    FeedView()
}
