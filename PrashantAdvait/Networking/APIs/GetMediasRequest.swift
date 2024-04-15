//
//  GetMediasRequest.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import Foundation

struct GetMediasRequest: RequestHandler {
    
    func GetMediaCovers(from requestParam: RequestData) -> URLRequest? {
        let urlString =  APIPath.MediaCoverages
        if var url = URL(string: urlString) {
            url = setQueryParams(parameters: requestParam.param, url: url)
            var urlRequest = URLRequest(url: url)
            setDefaultHeaders(request: &urlRequest)
            urlRequest.httpMethod = HTTPMethod.get.rawValue
            return urlRequest
        }
        return nil
    }
    
}
