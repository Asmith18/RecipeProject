//
//  DessertDetailViewModel.swift
//  AdamSmithMealProject
//
//  Created by adam smith on 10/27/22.
//

import Foundation

protocol DessertDetailViewModelDelegate: DessertDetailViewController {
    func dessertHasData()
}

class DessertDetailViewModel {
    
    var recipe: Recipe?
    var recipeDetail: RecipeDetails?
    private let service = DessertService()
    weak var delegate: DessertDetailViewModelDelegate?
    
    init(recipe: Recipe, delegate: DessertDetailViewModelDelegate) {
        self.delegate = delegate
        self.recipe = recipe
    }
    
    func fetchDessert() {
        guard let id = recipe?.id else { return }
        service.fetchDessertList(for: .dessertById(id)) { [weak self] result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let dessert):
                self?.recipeDetail = dessert.desserts[0]
                self?.delegate?.dessertHasData()
            }
        }
    }
}
