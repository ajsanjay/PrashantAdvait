//
//  GetMediaAPI.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import Foundation

struct GetMediaAPI {
    
    func GetMediaByPage(param: [String: Any], completion: @escaping ([MediaCoverage]?, ServiceError?) -> ()) {
        let request = GetMediasRequest().GetMediaCovers(from: RequestData(param: param))
        APILoader.shared.loadAPIRequest(requestData: request) { (model: [MediaCoverage]?, error) in
            if let _ = error {
                completion(nil, error)
            } else {
                DispatchQueue.main.async {
                    completion(model, nil)
                }
            }
        }
    }
    
}
