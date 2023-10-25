//
//  QuestodoAPI.swift
//  Questodo
//
//  Created by Simon Zwicker on 25.10.23.
//

import Foundation
import ZNetwork

enum QuestodoAPI {
    // MARK: - Character
    case createCharacter(CharacterDraft)
    case character(String)
}

extension QuestodoAPI: ZNetworkPoint {
    var path: String {
        switch self {
        case .createCharacter: "/collections/characters/records"
        case .character(let id): "/collections/characters/records/\(id)"
        }
    }

    var method: ZNMethod {
        switch self {
        case .createCharacter: .POST
        default: .GET
        }
    }

    var headers: [ZNHeader] {
        var headers: [ZNHeader] = []

        switch self {
        default: headers.append(.ContentJson)
        }

        return headers
    }

    var parameters: [String: Any] {
        var params: [String: Any] = [:]

        switch self {
        case .createCharacter(let draft):
            params["name"] = draft.name.trimmingCharacters(in: .whitespaces)
            params["skin"] = draft.skin.rawValue
            params["hairType"] = draft.hairType.rawValue
            params["hairColor"] = draft.hairColor.rawValue
            params["bodyType"] = draft.bodyType

        default: break
        }

        return params
    }

    var encoding: ZNEncoding {
        switch self {
        case .createCharacter: .json
        default: .url
        }
    }

    var boundary: String {
        ""
    }
}
