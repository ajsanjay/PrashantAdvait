//
//  APIHandler.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import Foundation

public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
}

public enum RequestParamType {
    case body
    case query
}

public struct RequestData {
    var requestParamType:RequestParamType = .body
    var param:[String: Any]
}

protocol RequestHandler {
    func setQueryParams(parameters:[String: Any], url: URL) -> URL
    func setDefaultHeaders(request: inout URLRequest)
}
protocol ResponseHandler {
    func parseResponse<C: Codable>(data: Data, response: HTTPURLResponse) throws -> C
}
