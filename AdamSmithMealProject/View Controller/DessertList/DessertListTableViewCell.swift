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
    
    func updateviews(dessert: Desserts) {
        dessertNameTextLabel.text = dessert.name
    }
}
