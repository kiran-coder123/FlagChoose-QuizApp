//
//  ViewController.swift
//  100DaysOfSwiftApp
//
//  Created by Satinder Panesar on 4/20/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
     var countries = [String]()
     var score = 0
    var correctAnswer = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia","france","germany","ireland","italy","monaco","nigeria","poland","russia","spain","us","uk"]
        
        // Border Width
        
        btn1.layer.borderWidth = 1
        btn2.layer.borderWidth = 1
        btn3.layer.borderWidth = 1
        
        // Color
        btn1.layer.borderColor = UIColor.lightGray.cgColor
        btn2.layer.borderColor = UIColor.lightGray.cgColor
        btn3.layer.borderColor = UIColor.lightGray.cgColor

        
        
         askQuestion()
     }
    func askQuestion(action: UIAlertAction! = nil){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        btn1.setImage(UIImage(named: countries[0]), for: .normal)
        btn2.setImage(UIImage(named: countries[1]), for: .normal)
        btn3.setImage(UIImage(named: countries[2]), for: .normal)
        
        
        title = countries[correctAnswer].uppercased()
    }
    
    // Buttons Actions
    
    @IBAction func btnTapped(_ sender: UIButton) {
        
        var title: String
        
        if sender.tag == correctAnswer{
            title = "Correct"
            score += 1
        } else{
            title = "Wrong"
            score -= 1
        }
        
        // Alert
        let ac = UIAlertController(title: title, message: "Your score is \(score)", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        present(ac, animated: true, completion: nil)
    }
    func showFlagies(){
        // this method for testing 
    }
}

