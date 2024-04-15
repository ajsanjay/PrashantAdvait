//
//  RequestHandler+Extension.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import Foundation

// MARK: Request Handler Supporting methods
extension RequestHandler {
    
    func setQueryParams(parameters:[String: Any], url: URL) -> URL {
        var components = URLComponents(url: url, resolvingAgainstBaseURL: false)
        components?.queryItems = parameters.map { element in URLQueryItem(name: element.key, value: String(describing: element.value) ) }
        return components?.url ?? url
    }
    
    func setDefaultHeaders(request: inout URLRequest) {
        request.setValue(Constants.APIHeaders.contentTypeValue, forHTTPHeaderField: Constants.APIHeaders.kContentType)
    }
    
}
