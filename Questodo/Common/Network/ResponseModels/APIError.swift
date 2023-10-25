//
//  APIError.swift
//  Questodo
//
//  Created by Simon Zwicker on 25.10.23.
//

struct APIError: Codable {
    let code: Int
    let message: String
    let data: [String: APIErrorDetail]
}

struct APIErrorDetail: Codable {
    let code: String
    let message: String
}
