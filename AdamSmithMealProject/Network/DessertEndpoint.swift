//
//  DessertEndpoint.swift
//  AdamSmithMealProject
//
//  Created by adam smith on 10/27/22.
//

import Foundation

enum DessertEndpoint {
    
    case filterDessert(String)
    case dessertById(String)
    
    var path: String {
        switch self {
        case .filterDessert:
            return "filter.php"
        case .dessertById:
            return "lookup.php"
        }
    }
    
    var fullURL: URL? {
        guard var baseURL = URL(string: "https://www.themealdb.com/api/json/v1/1/") else { return nil }
        
        switch self {
        case .filterDessert:
            baseURL.appendPathComponent(path)
            let dessertQuery = URLQueryItem(name: "c", value: "Dessert")
            guard var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true) else { return nil }
                    components.queryItems = [dessertQuery]
                    return components.url
            
        case .dessertById(let id):
            baseURL.appendPathComponent(path)
            let idQuery = URLQueryItem(name: "i", value: id)
            guard var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true) else { return nil }
                    components.queryItems = [idQuery]
                    return components.url
        }
    }
}
