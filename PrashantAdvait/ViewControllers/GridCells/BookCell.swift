//
//  BookCell.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import SwiftUI

struct BookCell: View {
    
    let bookInfo: MediaCoverage
    
    var body: some View {
        VStack {
            Text("")
            Text(bookInfo.title)
                .frame(maxHeight: 20)
            Text(bookInfo.language)
            PrashantRemoteImage(urlString: "\(bookInfo.thumbnail.domain)/\(bookInfo.thumbnail.basePath)/\(bookInfo.thumbnail.qualities[bookInfo.thumbnail.qualities.count - 1])/\(bookInfo.thumbnail.key)")
            Text(bookInfo.publishedAt)
                .frame(maxHeight: 20)
            Text(bookInfo.publishedBy)
                .frame(maxHeight: 20)
            Text("")
        }
        .border(Color("trilingGreen"), width: 4)
        .cornerRadius(10)
    }
}

#Preview {
    BookCell(bookInfo: MockData.data1)
}
