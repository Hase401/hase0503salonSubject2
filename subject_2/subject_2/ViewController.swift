//
//  ViewController.swift
//  subject_2
//
//  Created by 長谷川孝太 on 2021/05/03.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var inputedNumber1ByTextField: UITextField!
    @IBOutlet private weak var inputedNumber2ByTextField: UITextField!
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    @IBOutlet private weak var resultNumberLabel: UILabel!

    @IBAction private func calculateButton(_ sender: UIButton) {
        let number1 = Float(inputedNumber1ByTextField.text!) ?? 0
        let number2 = Float(inputedNumber2ByTextField.text!) ?? 0
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            let result = number1 + number2
            resultNumberLabel.text = "\(result)"
        case 1:
            let result = number1 - number2
            resultNumberLabel.text = "\(result)"
        case 2:
            let result = number1 * number2
            resultNumberLabel.text = "\(result)"
        case 3:
            if number2 == 0 {
                resultNumberLabel.text = "割る数には0以外を入力してください"
            } else {
                let result = number1 / number2
                resultNumberLabel.text = "\(result)"
            }
        default:
            break
        }
    }
}

