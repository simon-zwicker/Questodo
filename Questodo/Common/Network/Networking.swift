//
//  Networking.swift
//  Questodo
//
//  Created by Simon Zwicker on 25.10.23.
//

import Foundation
import ZNetwork

class Networking<RM: Codable> {
    var endpoint: QuestodoAPI?

    func call() async -> Result<RM, ZNetworkError> {
        guard let endpoint else { fatalError() }
        return await request(endpoint)
    }

    private func request(_ endpoint: QuestodoAPI) async -> Result<RM, ZNetworkError> {
        return await Network.shared.api.run(endpoint, error: APIError.self)
    }
}
