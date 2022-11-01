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
        return viewModel.recipes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "desserts", for: indexPath) as? DessertListTableViewCell else { return UITableViewCell() }
        
        let recipe = viewModel.recipes[indexPath.row]
        cell.updateviews(recipe: recipe)
        
        return cell
    }
    
    
    
//    I want to display the details of a meal object on the detail vc
//    i need to do a network call that takes in an id
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "toDetailVC",
              let index = tableView.indexPathForSelectedRow,
              let destination = segue.destination as? DessertDetailViewController else { return }
        let dessert = viewModel.recipes[index.row]
        destination.viewModel = DessertDetailViewModel(recipe: dessert, delegate: destination)
    }
}

extension DessertListTableViewController: DessertListViewModelDelegate {
    func dessertListHasData() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}
