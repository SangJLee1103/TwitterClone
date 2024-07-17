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
                    ForEach(MOCK_MESSAGES) { message in
                        MessageView(message: message)
                    }
                }
            }.padding(.top)
            
            MessageInputView(messageText: $messageText)
                .padding()
        }
    }
}

#Preview {
    ChatView()
}
