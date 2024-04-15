//
//  ButtonStyle1.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import SwiftUI

struct ButtonStyle1: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(Color("DarkGreen"))
            .frame(width: 290, height: 55)
            .background(Color("trilingGreen").gradient)
            .cornerRadius(15)
    }
}

#Preview {
    ButtonStyle1(title: "Display Limit 10")
}
