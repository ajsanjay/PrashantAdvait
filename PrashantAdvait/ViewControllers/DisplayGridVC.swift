//
//  DisplayGridVC.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import SwiftUI

struct DisplayGridVC: View {
    
    @StateObject var viewModel = DisplayGridViewModel()
    
    var body: some View {
        ZStack {
            BackGround()
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.Datas) { bookInfo in
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

#Preview {
    DisplayGridVC()
}
