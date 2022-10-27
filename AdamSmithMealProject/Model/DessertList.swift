//
//  DessertList.swift
//  AdamSmithMealProject
//
//  Created by adam smith on 10/27/22.
//

import Foundation

struct DessertList: Decodable {
    let meals: [Desserts]
}

struct Desserts: Decodable {
    enum CodingKeys: String, CodingKey {
        case name = "strMeal"
        case imageString = "strMealThumb"
        case id = "idmeal"
    }
    
    let name: String
    let imageString: String
    let id: String
}
