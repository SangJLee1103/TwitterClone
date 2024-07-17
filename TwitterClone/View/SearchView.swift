//
//  SearchView.swift
//  TwitterClone
//
//  Created by 이상준 on 7/14/24.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            
            VStack(alignment: .leading) {
                ForEach(0..<10) { _ in
                    HStack { Spacer() }
                    UserCell()
                }
            }.padding(.leading)
        }
    }
}

#Preview {
    SearchView()
}
