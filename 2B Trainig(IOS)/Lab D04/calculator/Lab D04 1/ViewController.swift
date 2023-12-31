//
//  ViewController.swift
//  Lab D04 1
//
//  Created by Ethar on 25/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculatorResults: UILabel!
    @IBOutlet weak var calulatorWorkings: UILabel!
    
    var workings: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        // Do any additional setup after loading the view.
    }

    func clearAll()
    {
        workings = ""
        calculatorResults.text = ""
        calulatorWorkings.text = ""
    }
    
    @IBAction func equalTap(_ sender: Any) {
        if (validInput()){
            let checkWorkingForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
            let expression = NSExpression(format: checkWorkingForPercent)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            let reultString = formatresult(result: result)
            calculatorResults.text = reultString
        }
        else{
            let alert = UIAlertController(
                title: "Invalid Input", message: "calculator enable to do math based on input", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "okay", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    func validInput() -> Bool{
    var count = 0
    var funcCharIndexs = [Int]()
    
    for char in workings
    {
        if (specialCharacter(char: char))
        {
            funcCharIndexs.append(count)
        }
        count += 1
    }
    
    var previous: Int = -1
    for index in funcCharIndexs {
        if (index == 0){
            return false
        }
        
        if (index == workings.count - 1 )
        {
            return false
        }
        if (previous != -1){
            if (index - previous == 1){
                return false
            }
        }
        previous = index
    }
        return true
    }
    
    func specialCharacter (char: Character) -> Bool
    {
        if (char == "*"){
            return true
        }
        if(char == "/"){
            return true
        }
        if(char == "+"){
            return true
        }
        return false
    }
    
    func formatresult(result: Double) -> String
    {
        if(result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", result)
        }
        else{
            return String(format: "%.2f", result)
        }
    }
    
    @IBAction func AllClearTap(_ sender: Any) {
        clearAll()
    }
    

        func addToWorkings(value: String) {
            workings = workings + value
            calulatorWorkings.text = workings
        }
    
    @IBAction func percentTap(_ sender: Any) {
        addToWorkings(value: "%")
    }
    
    
    @IBAction func divideTap(_ sender: Any) {
        addToWorkings(value: "/")

    }
    
    @IBAction func TimesTap(_ sender: Any) {
        addToWorkings(value: "x")

    }
    
    @IBAction func minusTap(_ sender: Any) {
        addToWorkings(value: "-")

    }
    
    @IBAction func plusTap(_ sender: Any) {
        addToWorkings(value: "+")

    }
    
    
    @IBAction func decimalTag(_ sender: Any) {
        addToWorkings(value: ".")

    }
    
    
    @IBAction func zeroTap(_ sender: Any) {
        addToWorkings(value: "0")

    }
    
    @IBAction func oneTap(_ sender: Any) {
        addToWorkings(value: "1")

    }
    
    @IBAction func twoTap(_ sender: Any) {
        addToWorkings(value: "2")

    }
    
    @IBAction func threeTap(_ sender: Any) {
        addToWorkings(value: "3")

    }
    
    @IBAction func fourTap(_ sender: Any) {
        addToWorkings(value: "4")

    }
    
    @IBAction func fiveTap(_ sender: Any) {
        addToWorkings(value: "5")

    }
    
    
    @IBAction func sixTap(_ sender: Any) {
        addToWorkings(value: "6")

    }
    
    @IBAction func sevenTap(_ sender: Any) {
        addToWorkings(value: "7")

    }
    
    
    @IBAction func eightTap(_ sender: Any) {
        addToWorkings(value: "8")
    }
    
    @IBAction func nineTap(_ sender: Any) {
        addToWorkings(value: "9")

    }
}


