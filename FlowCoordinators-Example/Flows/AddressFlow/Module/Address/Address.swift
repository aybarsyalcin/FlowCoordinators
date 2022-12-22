//
//  
//  Address.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 19.12.2022.
//
//

import Foundation

// MODEL
struct Address: Codable {
    let catDescription: String
    let imageURL: String
    let statusCode: Int
    enum CodingKeys: String, CodingKey {
        case catDescription = "description"
        case imageURL = "imageUrl"
        case statusCode
    }
}

struct AddressResponse: Codable {
    let items: [Address]
}
