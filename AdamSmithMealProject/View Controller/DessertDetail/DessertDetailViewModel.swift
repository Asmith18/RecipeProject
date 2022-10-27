//
//  DessertDetailViewModel.swift
//  AdamSmithMealProject
//
//  Created by adam smith on 10/27/22.
//

import Foundation

protocol DesseertDetailViewModelDelegate: DessertDetailViewController {
    func dessertHasData()
}

class DessertDetailViewModel {
    
    var dessert: DessertMeals?
    weak var delegate: DessertListViewModelDelegate?
    
    init(delegate: DessertListViewModelDelegate? = nil) {
        self.delegate = delegate
    }
}
