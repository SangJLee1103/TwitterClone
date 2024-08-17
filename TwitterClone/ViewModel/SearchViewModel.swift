//
//  SearchViewModel.swift
//  TwitterClone
//
//  Created by 이상준 on 7/25/24.
//

import SwiftUI
import Firebase

enum SearchViewModelConfiguration {
    case search
    case newMesage
}

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    private let config: SearchViewModelConfiguration
    
    init(config: SearchViewModelConfiguration) {
        self.config = config
        fetchUser(forConfig: config)
    }
    
    func fetchUser(forConfig config: SearchViewModelConfiguration) {
        COLLECTION_USERS.getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            let users = documents.map { User(dictionary: $0.data()) }
            
            switch config {
            case .newMesage:
                self.users = users.filter { !$0.isCurrentUser }
            case .search:
                self.users = users
            }
        }
    }
    
    func filteredUsers(_ query: String) -> [User] {
        let lowercasedQuery = query.lowercased()
        return users.filter { $0.fullname.lowercased().contains(lowercasedQuery) || $0.username.contains(lowercasedQuery) }
    }
}
