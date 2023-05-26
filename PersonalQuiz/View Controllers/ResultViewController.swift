//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Aleksandr Mamlygo on 24.05.23.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
}
