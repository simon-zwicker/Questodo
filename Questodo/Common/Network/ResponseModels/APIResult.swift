//
//  APIResult.swift
//  Questodo
//
//  Created by Simon Zwicker on 25.10.23.
//

struct APIResult<Items: Codable>: Codable {
    let page: Int
    let perPage: Int
    let totalPages: Int
    let totalItems: Int
    let items: [Items]
}
