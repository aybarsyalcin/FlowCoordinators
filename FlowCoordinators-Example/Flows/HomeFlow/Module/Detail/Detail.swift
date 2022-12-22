//
//  
//  Detail.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//
//

import Foundation

// MODEL
struct Detail: Codable {
    let catDescription: String
    let imageURL: String
    let statusCode: Int
    
    enum CodingKeys: String, CodingKey {
        case catDescription = "description"
        case imageURL = "imageUrl"
        case statusCode
    }
}

struct DetailResponse: Codable {
    let items: [Detail]
}
