//
//  SecondViewController.swift
//  HomeWorkFourth
//
//  Created by Egor Markov on 01.12.2020.
//

import UIKit

class SecondViewController: UIViewController {

    
    //MARk: - IBOutlet
    @IBOutlet weak var textLabel: UILabel!
    
    
    //MARK: - Propirties
    var text: String!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = ""
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            UIView.animate(withDuration: 3) {
                self.textLabel.transform = CGAffineTransform(scaleX: -0.5, y: -2)
                self.textLabel.transform = CGAffineTransform(rotationAngle: .pi / 4)
                self.textLabel.transform = CGAffineTransform.identity
                self.textLabel.text = self.text
            }
        }
     
    }
    

}
