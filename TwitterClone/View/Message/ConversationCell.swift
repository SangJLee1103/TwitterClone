//
//  ConversationsCell.swift
//  TwitterClone
//
//  Created by 이상준 on 7/15/24.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image("venom-10")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 56, height: 56)
                .cornerRadius(28)
            
            VStack(alignment: .leading) {
                Text("batman")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("Longer messages text to see what happens when I do this")
                    .font(.system(size: 14))
            }
        }
    }
}

#Preview {
    ConversationCell()
}
