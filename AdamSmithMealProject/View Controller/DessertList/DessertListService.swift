//
//  DessertService.swift
//  AdamSmithMealProject
//
//  Created by adam smith on 10/27/22.
//

import Foundation

struct DessertListService {
    
    private let apiService = APIService()
    
    func fetchDessertList(for endpoint: DessertEndpoint, completion: @escaping (Result<DessertList, ResultError>) -> Void) {
        
        guard let finalURL = endpoint.fullURL else {
            completion(.failure(.badURL))
            return 
        }
        
        let urlRequest = URLRequest(url: finalURL)
        
        apiService.perform(urlRequest) { result in
            switch result {
            case .success(let data):
                do {
                    let dessertList = try JSONDecoder().decode(DessertList.self, from: data)
                    completion(.success(dessertList))
                } catch {
                    completion(.failure(.errorDecoding))
                }
            case .failure(let error):
                completion(.failure(.requestError(error)))
            }
        }
    }
}
