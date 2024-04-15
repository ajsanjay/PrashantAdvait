//
//  APIPath.swift
//  PrashantAdvait
//
//  Created by Jaya Sabeen on 15/04/24.
//

import Foundation

#if DEBUG
let environment = APIEnvironment.development
#else
let environment = APIEnvironment.production
#endif

struct APIPath {
    static var MediaCoverages: String { return "\(environment.baseURL(route: .v2))/content/misc/media-coverages"}
}

enum ServerStatus: String {
    case Success = "Success"
    case fail = "fail"
}
