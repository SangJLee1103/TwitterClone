//
//  LazyView.swift
//  TwitterClone
//
//  Created by 이상준 on 8/16/24.
//

import SwiftUI

struct LazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
    
    var body: Content {
        build()
    }
}
