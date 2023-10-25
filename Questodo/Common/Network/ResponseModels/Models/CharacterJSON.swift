//
//  CharacterJSON.swift
//  Questodo
//
//  Created by Simon Zwicker on 25.10.23.
//

struct CharacterJSON: Codable {
    let id: String
    let collectionId: String
    let collectionName: String
    let created: String
    let updated: String
    let name: String
    let skin: String
    let hairType: String
    let hairColor: String
    let bodyType: Int
}
