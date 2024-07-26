//
//  SearchViewModel.swift
//  TwitterClone
//
//  Created by 이상준 on 7/25/24.
//

import SwiftUI
import Firebase

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        fetchUser()
    }
    
    func fetchUser() {
        COLLECTION_USERS.getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            self.users = documents.map { User(dictionary: $0.data()) }
        }
    }
}
