//
//  SecondDareViewController.swift
//  IBOutlet_IBAction_IBOutletCollection
//
//  Created by Elisa Kalil on 13/05/22.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var challengeLabel: UILabel!
    @IBOutlet weak var challengeInputField: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        configureTextField()
    }
    
    func setupView() {
        continueButton.isHidden = true
        challengeInputField.placeholder = "Digite sua resposta"
        challengeInputField.keyboardType = .numberPad
    }
    
    func configureTextField() {
        challengeInputField.delegate = self
    }
    
    func verifyAnswer() {
        if challengeInputField.text == "220" {
            print("220")
            continueButton.isHidden = false
        } else {
            continueButton.isHidden = true
        }
    }
    @IBAction func tryButton(_ sender: Any) {
        verifyAnswer()
    }
}

extension SecondViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
