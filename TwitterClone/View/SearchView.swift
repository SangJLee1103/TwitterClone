//
//  SearchView.swift
//  TwitterClone
//
//  Created by 이상준 on 7/14/24.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @ObservedObject var viewModel = SearchViewModel()
    
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            
            VStack(alignment: .leading) {
                ForEach(viewModel.users) { user in
                    HStack { Spacer() }
                    
                    NavigationLink(
                        destination: UserProfileView(),
                        label: {
                            UserCell(user: user)
                        })
                }
            }.padding(.leading)
        }
    }
}

#Preview {
    SearchView()
}
