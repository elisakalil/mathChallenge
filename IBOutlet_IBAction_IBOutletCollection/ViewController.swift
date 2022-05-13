
//  ViewController.swift
//  IBOutlet_IBAction_IBOutletCollection
//  Created by Elisa Kalil on 19/10/21.

import UIKit

class ViewController: UIViewController {

    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var changeFontColor: UIButton!
    @IBOutlet weak var reset: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in buttons {
            button.layer.cornerRadius = 12
        }
    }
    

    @IBAction func resettingDare(_ sender: UIButton) {
        messageLabel.text = "Tap the buttons,\n I dare you"
        messageLabel.textColor = .white
        changeFontColor.backgroundColor = .blue
        reset.backgroundColor = .blue
        view.backgroundColor = .black
    }
    
    @IBAction func changingTextCollor(_ sender: UIButton) {
        messageLabel.text = "Tap the buttons,\n I dare you"
        messageLabel.textColor = .green
        view.backgroundColor = .black
    }
    
    @IBAction func acceptingDare(_ sender: UIButton) {
        messageLabel.text = "☠"        
    }
}

