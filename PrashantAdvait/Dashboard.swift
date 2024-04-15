//
//  Dashboard.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import SwiftUI

enum LimitBy: Int {
    
    case twentyFive
    case fifty
    case hundred
    
    func getLimitValue() -> Int {
        switch self {
        case .twentyFive:
            return 25
        case .fifty:
            return 50
        case .hundred:
            return 100
        }
    }
}

struct Dashboard: View {
    
    @State var isDisplayingDetail: Bool
    @State var pageLimit: LimitBy = .twentyFive
    
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
                        pageLimit = .twentyFive
                        isDisplayingDetail.toggle()
                    } label: {
                        ButtonStyle1(title: "Display limit: 25")
                    }
                    .padding()
                    Button {
                        pageLimit = .fifty
                        isDisplayingDetail.toggle()
                    } label: {
                        ButtonStyle1(title: "Display limit: 50")
                    }
                    .padding()
                    Button {
                        pageLimit = .hundred
                        isDisplayingDetail.toggle()
                    } label: {
                        ButtonStyle1(title: "Display limit: 100")
                    }
                    .padding()
                }
                .foregroundColor(.white)
            }
        }
        .fullScreenCover(isPresented: $isDisplayingDetail, content: {
            DisplayGridVC(backToDashboard: $isDisplayingDetail, limit: pageLimit.getLimitValue())
        })
    }
}

#Preview {
    Dashboard(isDisplayingDetail: false)
}
