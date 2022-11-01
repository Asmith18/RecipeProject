//
//  DessertList.swift
//  AdamSmithMealProject
//
//  Created by adam smith on 10/27/22.
//

import Foundation

struct MealCategories: Decodable {
    enum CodingKeys: String, CodingKey {
        case recipes = "meals"
    }
    let recipes: [Recipe]
}

struct Recipe: Decodable {
    enum CodingKeys: String, CodingKey {
        case name = "strMeal"
        case id = "idMeal"
    }
    
    let name: String
    let id: String
}
