//
//  APIEnvironment.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import Foundation

enum APIEnvironment {
    
    case development
    case production
    
    func baseURL (route: APIroute) -> String {
        return "https://\(domain())"+"\(route.route())"
    }

    func domain() -> String {
        return self == .development ? "acharyaprashant.org/api" : "acharyaprashant.org/api"
    }
    
    enum APIroute {
        case v1
        case v2
        case v3
        case v4
        func route() -> String {
            switch self {
            case .v1:
                return "/v1"
            case .v2:
                return "/v2"
            case .v3:
                return "/v3"
            case .v4:
                return "/v4"
            }
        }
    }
}
