//
//  DessertListTableViewCell.swift
//  AdamSmithMealProject
//
//  Created by adam smith on 10/27/22.
//

import UIKit

class DessertListTableViewCell: UITableViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var dessertNameTextLabel: UILabel!
    
    func updateviews(recipe: Recipe) {
        dessertNameTextLabel.text = recipe.name
    }
}
