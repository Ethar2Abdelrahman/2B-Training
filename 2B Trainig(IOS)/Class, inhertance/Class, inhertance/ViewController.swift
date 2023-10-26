//
//  ViewController.swift
//  Class, inhertance
//
//  Created by Ethar on 26/10/2023.
//

import UIKit

class Person{
    func getSalary(_ salary: Int) -> Int {
        return salary
    }
}

class Manager: Person {
    override func
    getSalary(_ salary: Int) -> Int {
       return salary * 5
    }
}

class Employee: Person {
    override func
    getSalary(_ salary: Int) -> Int {
       return salary
    }
}

class ViewController: UIViewController {


    
    @IBOutlet weak var salaryOutput: UILabel!
    @IBOutlet weak var salaryInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func manager(_ sender: Any) {
        if let salary = Int(salaryInput.text ?? "")
        {
            let manager = Manager()
            let salaryResult = manager.getSalary(salary)
            salaryOutput.text = "Manager Salary: $\(salaryResult)"
        }

    }
    @IBAction func employee(_ sender: Any) {
        if let salary = Int(salaryInput.text ?? "")
        {
            let employee = Employee()
            let salaryResult = employee.getSalary(salary)
            salaryOutput.text = "Employee Salary: $\(salaryResult)"
        }
    }
}

