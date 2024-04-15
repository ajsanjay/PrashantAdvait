//
//  BackGround.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import SwiftUI

struct BackGround: View {
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("leadingOrange"), Color("trailingRed")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    BackGround()
}
