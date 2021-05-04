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
        let number1 = Double(inputedNumber1ByTextField.text!) ?? 0.0
        let number2 = Double(inputedNumber2ByTextField.text!) ?? 0.0
        let index = segmentedControl.selectedSegmentIndex
        var resultNumber: String
        
        switch index {
        case 0:
            resultNumber = String(number1 + number2)
        case 1:
            resultNumber = String(number1 - number2)
        case 2:
            resultNumber = String(number1 * number2)
        case 3:
            if number2 == 0 {
                resultNumber = "割る数には0以外を入力してください"
            } else {
                resultNumber = String(number1 / number2)
            }
        default:
            resultNumber = "Error"
        }
        
        resultNumberLabel.text = resultNumber
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        inputedNumber1ByTextField.keyboardType = .numberPad
        inputedNumber2ByTextField.keyboardType = .numberPad
    }
}

