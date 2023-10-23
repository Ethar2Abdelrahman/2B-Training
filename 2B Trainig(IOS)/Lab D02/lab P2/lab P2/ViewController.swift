//
//  ViewController.swift
//  lab P2
//
//  Created by Ethar on 23/10/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tempretureOutput: UILabel!
    @IBOutlet weak var tempretureInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func fahrenheit(_ sender: Any) {
        if let celsius = Double(tempretureInput.text ?? ""),  celsius <= 100{
            let fahrenheit = (celsius * 9/5) + 32
            tempretureOutput.text="\(fahrenheit)F"
        }else{
            tempretureOutput.text = "Out of  range !!"
        }
    }
    
    @IBAction func kelvin(_ sender: UIButton) {
        if let celsius = Double(tempretureInput.text ?? ""), celsius <= 100 {
            let kelvin = celsius + 273.1518
            tempretureOutput.text = "\(kelvin)K"
        }else{
            tempretureOutput.text = "Out of range !!"
        }
    }
}

