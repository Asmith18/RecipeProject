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
    
    var meals: [Desserts] = []
    weak var delegate: DessertListViewModelDelegate?
    private let service = DessertListService()
    
    init(delegate: DessertListViewModelDelegate?) {
        self.delegate = delegate
    }
    
    func fetchDessertList() {
        service.fetchDessertList(for: .filterDessert) { [weak self] result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let list):
                self?.meals = list.meals
                self?.delegate?.dessertListHasData()
            }
        }
    }
}
