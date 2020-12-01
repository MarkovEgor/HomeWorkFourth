//
//  MainViewConttroller.swift
//  HomeWorkFourth
//
//  Created by Egor Markov on 01.12.2020.
//

import UIKit

class MainViewConttroller: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet weak var nextButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.tabBarItem.image = UIImage(systemName: "square.grid.2x2")
        navigationController?.tabBarController?.tabBar.tintColor = .black
        nextButton.layer.cornerRadius = 10
    }
    

}
