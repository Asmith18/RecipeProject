//
//  Dessert.swift
//  AdamSmithMealProject
//
//  Created by adam smith on 10/27/22.
//

import Foundation

struct DessertCategory: Decodable {
    enum CodingKeys: String, CodingKey {
        case desserts = "meals"
    }
    let desserts : [RecipeDetails]
}

struct RecipeDetails: Decodable {
    
    enum CodingKeys: String, CodingKey {
        case name = "strMeal"
        case id = "idMeal"
        case instructions = "strInstructions"
        case imageString = "strMealThumb"
        case ing1 = "strIngredient1"
        case ing2 = "strIngredient2"
        case ing3 = "strIngredient3"
        case ing4 = "strIngredient4"
        case ing5 = "strIngredient5"
        case ing6 = "strIngredient6"
        case ing7 = "strIngredient7"
        case ing8 = "strIngredient8"
        case ing9 = "strIngredient9"
        case ing10 = "strIngredient10"
        case measure1 = "strMeasure1"
        case measure2 = "strMeasure2"
        case measure3 = "strMeasure3"
        case measure4 = "strMeasure4"
        case measure5 = "strMeasure5"
        case measure6 = "strMeasure6"
        case measure7 = "strMeasure7"
        case measure8 = "strMeasure8"
        case measure9 = "strMeasure9"
        case measure10 = "strMeasure10"
    }
    
    let name  : String?
    let id    : String?
    let instructions: String?
    let imageString : String?
    let ing1  : String?
    let ing2  : String?
    let ing3  : String?
    let ing4  : String?
    let ing5  : String?
    let ing6  : String?
    let ing7  : String?
    let ing8  : String?
    let ing9  : String?
    let ing10 : String?
    let measure1    : String?
    let measure2    : String?
    let measure3    : String?
    let measure4    : String?
    let measure5    : String?
    let measure6    : String?
    let measure7    : String?
    let measure8    : String?
    let measure9    : String?
    let measure10   : String?
}
