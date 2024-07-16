//
//  ConversationsView.swift
//  TwitterClone
//
//  Created by 이상준 on 7/15/24.
//

import SwiftUI

struct ConversationsView: View {
    @State var isShowingMessageView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                VStack {
                    ForEach(0..<20) { _ in
                        NavigationLink(
                            destination: ChatView(),
                            label: {
                                ConversationCell()
                            })
                    }
                }.padding()
            }
            
            Button(action: { self.isShowingMessageView.toggle()}, label: {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundStyle(.white)
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $isShowingMessageView, content: {
                SearchView()
            })
        }
    }
}

#Preview {
    ConversationsView()
}
