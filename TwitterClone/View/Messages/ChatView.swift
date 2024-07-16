//
//  ChatView.swift
//  TwitterClone
//
//  Created by 이상준 on 7/16/24.
//

import SwiftUI

struct ChatView: View {
    @State var messageText: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(0..<15) { _ in
                        HStack {
                            Spacer()
                            Text("Test message text")
                                .padding()
                                .background(.blue)
                                .clipShape(ChatBubble(isFromCurrentUser: true))
                                .foregroundStyle(.white)
                                .padding(.horizontal)
                        }
                    }
                }
            }
            
            MessageInputView(messageText: $messageText)
                .padding()
        }
    }
}

#Preview {
    ChatView()
}
