//
//  ImageLoader.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    
    @Published var image: Image? = nil
    
    func load(fromUrl urlstring: String) {
        DisplayGridAPI().downloadImage(fromUrl: urlstring) {
            uiImage in
            guard let uiImage = uiImage else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
    
}

struct RemoteImage: View {
    
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image(systemName: "book.closed").resizable()
    }
}

struct PrashantRemoteImage: View {
    
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear() {
                imageLoader.load(fromUrl: urlString)
            }
    }
}

#Preview {
    PrashantRemoteImage(urlString: "https://cimg.acharyaprashant.org/images/img-3f66bfcc-4a56-41f7-b24f-23e4d5402e43/20/image.jpg")
}
