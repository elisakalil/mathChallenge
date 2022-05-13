//
//  DareViewController.swift
//  IBOutlet_IBAction_IBOutletCollection
//
//  Created by Elisa Kalil on 12/05/22.
//

import Foundation
import UIKit

class DareViewController: UIViewController {

    @IBOutlet weak var chalengeLabel: UILabel!
    @IBOutlet weak var challengeInputField: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        verifyAnswer()
    }
    
    func setupView() {
        continueButton.isHidden = true
        challengeInputField.placeholder = "Digite sua resposta"
        challengeInputField.keyboardType = .numberPad
    }
    
    func verifyAnswer() {
        if challengeInputField.text == "251430" {
            print("251430")
            continueButton.isHidden = false
        } else {
            continueButton.isHidden = true
        }
    }
    
    @IBAction func continueButton(_ sender: Any) {
    }
    
    @IBAction func trybUTTON(_ sender: Any) {
        verifyAnswer()
    }
}

extension DareViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
