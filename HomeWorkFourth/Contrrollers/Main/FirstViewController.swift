//
//  ViewController.swift
//  HomeWorkFourth
//
//  Created by Egor Markov on 01.12.2020.
//

import UIKit

class FirstViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.layer.cornerRadius = 10
        textLabel.text = "HELLO"
    }

    
    
    //MARK: - IBAction
    
    @IBAction func tapNextButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let controller = storyboard.instantiateViewController(identifier: "SecondController") as? SecondViewController {
        controller.text = textLabel.text! + " " + "SecondController"
        
        present(controller, animated: true)
       }
    }
    
}

