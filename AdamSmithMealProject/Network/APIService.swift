//
//  networkController.swift
//  AdamSmithMealProject
//
//  Created by adam smith on 10/27/22.
//

import Foundation
import UIKit

struct APIService {
    func perform(_ request: URLRequest, completion: @escaping (Result<Data, ResultError>) -> Void) {
        URLSession.shared.dataTask(with: request) { dessertData, response, error in
            if let error {
                completion(.failure(.requestError(error)))
            }
            if let response = response as? HTTPURLResponse {
                print("completed with a response of", response.statusCode)
            }
            guard let dessertData = dessertData else {
                completion(.failure(.noData))
                return
            }
            completion(.success(dessertData))
        }.resume()
    }
}
