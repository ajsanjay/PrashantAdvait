//
//  Dashboard.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import SwiftUI

struct Dashboard: View {
    
    @State var isDisplayingDetail: Bool
    
    var body: some View {
        NavigationView {
            ZStack {
                BackGround()
                VStack {
                    Text("Welcome User")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding()
                    Button {
                        
                    } label: {
                        ButtonStyle1(title: "Display limit: 25")
                    }
                    .padding()
                    Button {
                        
                    } label: {
                        ButtonStyle1(title: "Display limit: 50")
                    }
                    .padding()
                    Button {
                        
                    } label: {
                        ButtonStyle1(title: "Display limit: 100")
                    }
                    .padding()
                }
                .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    Dashboard(isDisplayingDetail: false)
}
