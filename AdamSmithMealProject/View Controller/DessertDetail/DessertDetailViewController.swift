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
        viewModel = DessertDetailViewModel()
    }
    
    func updateViews() {
    }
}

extension DessertDetailViewController: DesseertDetailViewModelDelegate {
    func dessertHasData() {
    }
}
