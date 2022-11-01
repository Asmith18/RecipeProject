//
//  DessertViewModel.swift
//  AdamSmithMealProject
//
//  Created by adam smith on 10/27/22.
//

import Foundation

protocol DessertListViewModelDelegate: DessertListTableViewController {
    func dessertListHasData()
}

class DessertListViewModel {
    
    var recipes: [Recipe] = []
    var recipe: Recipe?
    weak var delegate: DessertListViewModelDelegate?
    private let service = DessertListService()
    
    init(delegate: DessertListViewModelDelegate) {
        self.delegate = delegate
    }
    
    func fetchDessertList() {
        service.fetchDessertList(for: .filterDessert) { [weak self] result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let list):
                self?.recipes = list.recipes
                self?.delegate?.dessertListHasData()
            }
        }
    }
}

// step 1 - pass dessert object to DessertDetailViewModel
// step 2 - use that id to fetch the dessert meal
// step 3 - present dessert list meal
