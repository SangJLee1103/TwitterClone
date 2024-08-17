//
//  MessageInputView.swift
//  TwitterClone
//
//  Created by 이상준 on 7/16/24.
//

import SwiftUI

struct MessageInputView: View {
    @Binding var messageText: String
    
    var action: () -> Void
    
    var body: some View {
        HStack {
            TextField("Message...", text: $messageText)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(minWidth: 30)
            
            Button(action: action) {
                Text("Send")
                    .bold()
                    .foregroundStyle(.blue)
            }   
        }
    }
}
