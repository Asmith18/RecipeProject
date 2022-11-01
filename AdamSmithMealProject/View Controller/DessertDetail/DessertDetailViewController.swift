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
    @IBOutlet weak var dessertImageView: ServiceRequestingImageView!
    @IBOutlet weak var dessertNameLabel: UILabel!
    @IBOutlet weak var dessetInstructionsTextView: UITextView!
    @IBOutlet weak var ing1Label: UILabel!
    @IBOutlet weak var ing2Label: UILabel!
    @IBOutlet weak var ing3Label: UILabel!
    @IBOutlet weak var ing4Label: UILabel!
    @IBOutlet weak var ing5Label: UILabel!
    @IBOutlet weak var ing6Label: UILabel!
    @IBOutlet weak var ing7Label: UILabel!
    @IBOutlet weak var ing8Label: UILabel!
    @IBOutlet weak var ing9Label: UILabel!
    @IBOutlet weak var ing10Label: UILabel!
    @IBOutlet weak var ing11Label: UILabel!
    @IBOutlet weak var ing12Label: UILabel!
    @IBOutlet weak var ing13Label: UILabel!
    @IBOutlet weak var ing14Label: UILabel!
    @IBOutlet weak var ing15Label: UILabel!
    @IBOutlet weak var ing16Label: UILabel!
    @IBOutlet weak var ing17Label: UILabel!
    @IBOutlet weak var ing18Label: UILabel!
    @IBOutlet weak var ing19Label: UILabel!
    @IBOutlet weak var ing20Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchDessert()
    }
    
    func updateViews() {
        guard let dessert = viewModel.recipeDetail else { return }
        dessertNameLabel.text = dessert.name
        dessetInstructionsTextView.text = dessert.instructions
        ing1Label.text = "\(dessert.ing1 ?? "") \(dessert.measure1 ?? "")"
        ing2Label.text = "\(dessert.ing2 ?? "") \(dessert.measure2 ?? "")"
        ing3Label.text = "\(dessert.ing3 ?? "") \(dessert.measure3 ?? "")"
        ing4Label.text = "\(dessert.ing4 ?? "") \(dessert.measure4 ?? "")"
        ing5Label.text = "\(dessert.ing5 ?? "") \(dessert.measure5 ?? "")"
        ing6Label.text = "\(dessert.ing6 ?? "") \(dessert.measure6 ?? "")"
        ing7Label.text = "\(dessert.ing7 ?? "") \(dessert.measure7 ?? "")"
        ing8Label.text = "\(dessert.ing8 ?? "") \(dessert.measure8 ?? "")"
        ing9Label.text = "\(dessert.ing9 ?? "") \(dessert.measure9 ?? "")"
        ing10Label.text = "\(dessert.ing10 ?? "") \(dessert.measure10 ?? "")"
        ing11Label.text = "\(dessert.ing11 ?? "") \(dessert.measure11 ?? "")"
        ing12Label.text = "\(dessert.ing12 ?? "") \(dessert.measure12 ?? "")"
        ing13Label.text = "\(dessert.ing13 ?? "") \(dessert.measure13 ?? "")"
        ing14Label.text = "\(dessert.ing14 ?? "") \(dessert.measure14 ?? "")"
        ing15Label.text = "\(dessert.ing15 ?? "") \(dessert.measure15 ?? "")"
        ing16Label.text = "\(dessert.ing16 ?? "") \(dessert.measure16 ?? "")"
        ing17Label.text = "\(dessert.ing17 ?? "") \(dessert.measure17 ?? "")"
        ing18Label.text = "\(dessert.ing18 ?? "") \(dessert.measure18 ?? "")"
        ing19Label.text = "\(dessert.ing19 ?? "") \(dessert.measure19 ?? "")"
        ing20Label.text = "\(dessert.ing20 ?? "") \(dessert.measure20 ?? "")"
        fetchImage()
    }
    
    func fetchImage() {
        guard let image = viewModel.recipeDetail?.imageString,
        let url = URL(string: image) else {
            return
        }
        dessertImageView.fetchImage(using: url)
    }
}

extension DessertDetailViewController: DessertDetailViewModelDelegate {
    func dessertHasData() {
        DispatchQueue.main.async {
            self.updateViews()
        }
    }
}
