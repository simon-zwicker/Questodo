//
//  Network.swift
//  Questodo
//
//  Created by Simon Zwicker on 25.10.23.
//

import Foundation
import ZNetwork

class Network {
    static let shared = Network()
    let api: ZNetwork
    let component: ZNetworkComponent

    init() {
        component = ZNetworkComponent(scheme: APIEnvironment.dev.scheme, host: APIEnvironment.dev.host, path: APIEnvironment.dev.path)
        api = ZNetwork(with: component)
        api.logLevel = .debug
    }
}
