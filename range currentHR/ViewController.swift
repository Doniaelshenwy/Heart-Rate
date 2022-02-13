//
//  ViewController.swift
//  range currentHR
//
//  Created by Donia Elshenawy on 12/02/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentHRLabel: UILabel!
    
    @IBOutlet weak var printLabel: UILabel!
    @IBOutlet weak var currentHRTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doneBtn(_ sender: UIButton) {
        guard let enterCurrentHR = currentHRTextField.text else {
            return
        }
        guard let convertCurrentHR = Double(enterCurrentHR) else {
            return
        }
        switch convertCurrentHR {
        case 100...120:
            printLabel.text = "You are in the Very Light zone. Activity in this zone helps with recovery."
        case 121...140:
            printLabel.text = "You are in the Light zone. Activity in this zone helps improve Basic endurance and fat burning."
        case 141...160:
            printLabel.text = "You are in the Moderate zone. Activity in this zone helps improve aerobic fitness."
        case 161...180:
            printLabel.text = "You are in the Hard zone. Activity in this zone increases maximum performance capacity for shorter sessions."
        case 181...200:
            printLabel.text = "You are in the Maximum zone. Activity in this zone helps fit athletes develop speed."
        default:
            printLabel.text = "slow down!"
        }
    }
    
}

