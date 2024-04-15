//
//  DisplayGridAPI.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import UIKit

struct DisplayGridAPI {
    
    private let cache = NSCache<NSString, UIImage>()
    
    //Mark :-  This function will download the image from url and cache it if it is already downloaded
    func downloadImage(fromUrl: String, completed: @escaping (UIImage?) -> Void) {
        
        let cacheKey = NSString(string: fromUrl)
        if let image = cache.object(forKey: cacheKey) {
            completed(image)
            return
        }
        guard let url = URL(string: fromUrl) else {
            completed(nil)
            return
        }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {
            data, response, error in
            guard let data = data, let image = UIImage(data: data) else {
                completed(nil)
                return
            }
            self.cache.setObject(image, forKey: cacheKey)
            completed(image)
        }
        task.resume()
        
    }
    
}
