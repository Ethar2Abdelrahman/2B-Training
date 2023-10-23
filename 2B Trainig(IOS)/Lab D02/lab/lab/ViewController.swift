//
//  ViewController.swift
//  lab
//
//  Created by Ethar on 23/10/2023.
//

import UIKit

class ViewController: UIViewController {
      
    @IBOutlet weak var show: UILabel!
    @IBOutlet weak var rate: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func done(_ sender: UIButton) {
        
        if let userInput=Int(rate.text ?? " "){
            switch userInput{
            case 100...120:
                show.text="you are in the very light zone. Activity in this zone help with recovery"
            case 121...140:
                show.text="you are in the light zone, Activity in this zone help improve basic and fat burning"
            case 141...160:
                show.text="you are in the moderate zone, activity in this zone help improve fitness"
            case 161...180:
                show.text="you are in the hard zone, Activity in this zone helps increases maximum performance capacity for shorter session"
            case 181...200:
                show.text="you are in the maximum zone, Activity in this zone helps fit athletes develop speed"
            default:
                show.text="please enter valid rate"
            }
        }else{
            show.text="plase enter valid rate"
        }
    }
}

