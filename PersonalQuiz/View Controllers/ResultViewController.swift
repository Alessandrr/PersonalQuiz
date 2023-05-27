//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Aleksandr Mamlygo on 24.05.23.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var emojiLabel: UILabel!
    @IBOutlet var definitionLabel: UILabel!
    
    var finalAnswers: [Answer]!
    private var resultAnimal: Animal?

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        resultAnimal = determineResult()
        emojiLabel.text = "Вы – \(resultAnimal?.rawValue ?? "🐙")"
        definitionLabel.text = "\(resultAnimal?.definition ?? "")"
    }

    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
    private func determineResult() -> Animal? {
        let animalAnswers = finalAnswers.map { $0.animal }
        
        var animalCounts: [Animal: Int] = [:]
        animalAnswers.forEach { animal in
            animalCounts[animal, default: 0] += 1
        }
        return animalCounts.sorted { $0.value > $1.value }.first?.key
    }
    
}
