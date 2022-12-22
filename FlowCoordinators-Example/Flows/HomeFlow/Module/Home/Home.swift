//
//  
//  Home.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//
//

import Foundation

// MODEL
struct Home: Codable {
    let catDescription: String
    let imageURL: String
    let statusCode: Int
    enum CodingKeys: String, CodingKey {
        case catDescription = "description"
        case imageURL = "imageUrl"
        case statusCode
    }
}

struct HomeResponse: Codable {
    let items: [Home]
}
