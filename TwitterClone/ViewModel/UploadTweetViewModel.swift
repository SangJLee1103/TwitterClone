//
//  UploadTweetViewModel.swift
//  TwitterClone
//
//  Created by 이상준 on 8/13/24.
//

import SwiftUI
import Firebase

class UploadTweetViewModel: ObservableObject {
    
    
    func uploadTweet(caption: String) {
        guard let user = AuthViewModel.shared.user else { return }
        let docRef = COLLECTION_TWEETS.document()
        
        let data: [String: Any] = ["uid": user.id,
                                   "caption": caption,
                                   "fullname": user.fullname,
                                   "timestamp": Timestamp(date: Date()),
                                   "username": user.username,
                                   "profileImageUrl": user.profileImageUrl,
                                   "likes": 0,
                                   "id": docRef.documentID]
        
        docRef.setData(data) { _ in
            print("DEBUG: Successfully uploaded tweet..")
        }
    }
}
