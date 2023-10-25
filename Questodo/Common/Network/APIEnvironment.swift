//
//  APIEnvironment.swift
//  Questodo
//
//  Created by Simon Zwicker on 25.10.23.
//

import Foundation
import ZNetwork

enum APIEnvironment {
    case dev
    case stage
    case prod
}

extension APIEnvironment {
    var scheme: String {
        "https"
    }

    var host: String {
        "questodo.pockethost.io"
    }

    var path: String {
        "/api"
    }

    var component: URLComponents {
        var components = URLComponents()
        components.scheme = self.scheme
        components.host = self.host
        components.path = self.path
        return components
    }
}
