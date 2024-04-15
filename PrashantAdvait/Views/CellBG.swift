//
//  CellBG.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import SwiftUI

struct CellBG: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("leadingViolet"), Color("trilingGreen")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    CellBG()
}
