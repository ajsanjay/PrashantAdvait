//
//  DisplayGridVC.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import SwiftUI

struct DisplayGridVC: View {
    
    @StateObject var viewModel = DisplayGridViewModel()
    @Binding var backToDashboard: Bool
    let limit: Int
    
    var body: some View {
        ZStack {
            BackGround()
            if viewModel.isLoading {
                loadingView()
            } else {
                VStack {
                    HStack {
                        Button {
                            backToDashboard.toggle()
                        } label: {
                            Image(systemName: "arrow.backward")
                                .resizable()
                                .frame(width: 40, height: 35)
                        }
                        .padding()
                        Text("Media Coverages")
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    .foregroundColor(.white)
                    ScrollView {
                        LazyVGrid(columns: viewModel.columns) {
                            ForEach(viewModel.ListData) { bookInfo in
                                BookCell(bookInfo: bookInfo)
                                    .frame(height: screenHeight * 0.3)
                            }
                        }
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    }
                }
            }
        }
        .onAppear() {
            viewModel.GetMediaCoverages(limit: limit)
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }

}

#Preview {
    DisplayGridVC(backToDashboard: .constant(true), limit: 10)
}
