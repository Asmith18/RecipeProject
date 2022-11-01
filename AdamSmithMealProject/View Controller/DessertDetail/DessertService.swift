//
//  DessertService.swift
//  AdamSmithMealProject
//
//  Created by adam smith on 10/28/22.
//

import Foundation

struct DessertService {
    
    private let apiService = APIService()
    
    func fetchDessertList(for endpoint: DessertEndpoint, completion: @escaping (Result<DessertCategory, ResultError>) -> Void) {
        
        guard let finalURL = endpoint.fullURL else {
            completion(.failure(.badURL))
            return
        }
        
        let urlRequest = URLRequest(url: finalURL)
        
        apiService.perform(urlRequest) { result in
            switch result {
            case .success(let data):
                do {
                    let dessertCategory = try JSONDecoder().decode(DessertCategory.self, from: data)
                    completion(.success(dessertCategory))
                } catch {
                    completion(.failure(.errorDecoding))
                }
            case .failure(let error):
                completion(.failure(.requestError(error)))
            }
        }
    }
}
