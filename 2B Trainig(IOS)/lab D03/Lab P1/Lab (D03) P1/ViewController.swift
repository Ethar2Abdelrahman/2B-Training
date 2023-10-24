//
//  ViewController.swift
//  Lab (D03) P1
//
//  Created by Ethar on 24/10/2023.
//

import UIKit

struct Card{
    let name: String
    let image: String
    
    init(name: String, image: String){
        self.name = name
        self.image = image
    }
    }
    

class ViewController: UIViewController {

    @IBOutlet weak var descriptionLable: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var currentIndex = 0
    
    var cards:[Card] = [
        Card(name: "Swift is a powerful and intuitive programming language for all Apple platforms. It’s easy to get started using Swift, with a concise-yet-expressive syntax and modern features you’ll love. Swift code is safe by design and produces software that runs lightning-fast." , image: "1"),
        Card(name: "Memory is managed automatically using tight, deterministic reference counting, keeping memory usage to a minimum without the overhead of garbage collection. You can even write concurrent code with simple, built-in keywords that define asynchronous behavior, making your code more readable and less error prone." , image: "2"),
        Card(name: "Swift is a powerful and intuitive programming language for all Apple platforms. It’s easy to get started using Swift, with a concise-yet-expressive syntax and modern features you’ll love. Swift code is safe by design and produces software that runs lightning-fast." , image: "3"),
        Card(name: "Memory is managed automatically using tight, deterministic reference counting, keeping memory usage to a minimum without the overhead of garbage collection. You can even write concurrent code with simple, built-in keywords that define asynchronous behavior, making your code more readable and less error prone." , image: "4"),

        
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateImage()
        // Do any additional setup after loading the view.
   
    }
    func updateImage() {
        imageView.image = UIImage(named: cards[currentIndex].image)
        descriptionLable.text = cards[currentIndex].name
        
       }
    
    @IBAction func previous(_ sender: Any) {
        currentIndex = (currentIndex - 1 + cards.count) % cards.count
        updateImage()
    }
    
    @IBAction func next(_ sender: Any) {
        currentIndex = (currentIndex + 1) % cards.count
        updateImage()
    }
}

