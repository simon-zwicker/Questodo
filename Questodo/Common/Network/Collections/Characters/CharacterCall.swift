//
//  CharacterCall.swift
//  Questodo
//
//  Created by Simon Zwicker on 25.10.23.
//

import Foundation
import ZNetwork

class CharacterCall: Networking<CharacterJSON> {
    func fetchCharacter(id: String) async throws -> CharacterJSON {
        self.endpoint = .character(id)
        let result = await call()
        switch result {
        case .success(let char): return char
        case .failure(let error): throw error.self
        }
    }
}
