//
//  Dessert.swift
//  AdamSmithMealProject
//
//  Created by adam smith on 10/27/22.
//

import Foundation

struct Dessert: Decodable {
    let meals : [DessertMeals]
}

struct DessertMeals: Decodable {
    let name        : String
    let instructions: String
    let imageString : String
    let ing1        : String
    let ing2        : String
    let ing3        : String
    let ing4        : String
    let ing5        : String
    let ing6        : String
    let ing7        : String
    let ing8        : String
    let ing9        : String
    let ing10       : String
    let measure1    : String
    let measure2    : String
    let measure3    : String
    let measure4    : String
    let measure5    : String
    let measure6    : String
    let measure7    : String
    let measure8    : String
    let measure9    : String
    let measure10   : String
}
