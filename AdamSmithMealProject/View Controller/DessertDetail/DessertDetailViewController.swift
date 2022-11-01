//
//  DessertDetailViewController.swift
//  AdamSmithMealProject
//
//  Created by adam smith on 10/27/22.
//

import UIKit

class DessertDetailViewController: UIViewController {
    
    var viewModel: DessertDetailViewModel!
    
    //MARK: - Outlets
    @IBOutlet weak var dessertImageView: UIImageView!
    @IBOutlet weak var dessertNameLabel: UILabel!
    @IBOutlet weak var dessetInstructionsTextView: UITextView!
    @IBOutlet weak var ingredient1Label: UILabel!
    @IBOutlet weak var ingredient2Label: UILabel!
    @IBOutlet weak var ingredient3Label: UILabel!
    @IBOutlet weak var ingredient4Label: UILabel!
    @IBOutlet weak var ingredient5Label: UILabel!
    @IBOutlet weak var ingredient6Label: UILabel!
    @IBOutlet weak var ingredient7Label: UILabel!
    @IBOutlet weak var ingredient8Label: UILabel!
    @IBOutlet weak var ingredient9Label: UILabel!
    @IBOutlet weak var ingredient10Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func updateViews() {
        guard let dessert = viewModel.recipeDetail else { return }
        dessertNameLabel.text = dessert.name
        dessetInstructionsTextView.text = dessert.instructions
        ingredient1Label.text = dessert.ing1
        ingredient2Label.text = dessert.ing2
        ingredient3Label.text = dessert.ing3
        ingredient4Label.text = dessert.ing4
        ingredient5Label.text = dessert.ing5
        ingredient6Label.text = dessert.ing6
        ingredient7Label.text = dessert.ing7
        ingredient8Label.text = dessert.ing8
        ingredient9Label.text = dessert.ing9
        ingredient10Label.text = dessert.ing10
    }
}

extension DessertDetailViewController: DessertDetailViewModelDelegate {
    func dessertHasData() {
        DispatchQueue.main.async {
            self.updateViews()
        }
    }
}
