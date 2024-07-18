//
//  NewTweetsView.swift
//  TwitterClone
//
//  Created by 이상준 on 7/18/24.
//

import SwiftUI

struct NewTweetView: View {
    @Binding var isPresented: Bool
    @State var captionText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .top) {
                    Image("batman")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(width: 64, height: 64)
                        .cornerRadius(32)
                    
                    TextArea("What's happening?", text: $captionText)
                    
                    Spacer()
                }
                .padding()
                .navigationBarItems(leading: Button(action: {
                    isPresented.toggle() }, label: {
                    Text("Cancel")
                        .foregroundStyle(.blue)
                }),
                trailing: Button(action: {}, label: {
                    Text("Tweet")
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(Capsule())
            }))
                    Spacer()
            }
        }
    }
}

#Preview {
    NewTweetView(isPresented: .constant(true))
}
