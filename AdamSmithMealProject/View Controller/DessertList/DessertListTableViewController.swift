//
//  DessertListTableViewController.swift
//  AdamSmithMealProject
//
//  Created by adam smith on 10/27/22.
//

import UIKit

class DessertListTableViewController: UITableViewController {
    
    var viewModel: DessertListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = DessertListViewModel(delegate: self)
        viewModel.fetchDessertList()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.meals.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "desserts", for: indexPath) as? DessertListTableViewCell else { return UITableViewCell() }
        
        let list = viewModel.meals[indexPath.row]
        cell.updateviews(dessert: list)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        return
    }
}

extension DessertListTableViewController: DessertListViewModelDelegate {
    func dessertListHasData() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}
