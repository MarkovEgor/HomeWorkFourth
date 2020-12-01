//
//  MessageViewController.swift
//  HomeWorkFourth
//
//  Created by Egor Markov on 01.12.2020.
//

import UIKit

class MessageViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet weak var animationView: UIView!
    @IBOutlet weak var animationButton: UIButton!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    
    //MARK: - Propirties
    
    var cornerRadius: CGFloat = 10
    var topConstraintValueUpdate: CGFloat = 400
    var topConstraintValue: CGFloat = 60
    var scaleStart: CGFloat = 1
    var scaleUpdate: CGFloat = 0.25
    var backgroundColor: UIColor = .orange
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationButton.layer.cornerRadius = 10
        topConstraint.constant = topConstraintValue
        animationView.layer.cornerRadius = cornerRadius
        
        navigationController?.tabBarItem.image = UIImage(systemName: "message")
        navigationController?.tabBarController?.tabBar.tintColor = .black
    }
    
    
    
    //MARK: - IBAction
    @IBAction func tapButtonAnimationView(_ sender: UIButton) {
        UIView.animate(withDuration: 1) { [self] in
            self.animationView.layer.cornerRadius = self.animationView.frame.width / 2
            self.topConstraint.constant = topConstraintValueUpdate
            self.animationView.transform = CGAffineTransform(scaleX: self.scaleUpdate, y: self.scaleUpdate)
            self.animationView.backgroundColor = self.backgroundColor
            self.view.layoutIfNeeded()
        } completion: { (isFinised) in
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                if isFinised {
                    UIView.animate(withDuration: 1) { [self] in
                        self.animationView.layer.cornerRadius = self.cornerRadius
                        self.topConstraint.constant = self.topConstraintValue
                        self.animationView.transform = CGAffineTransform(scaleX: self.scaleStart, y: self.scaleStart)
                        self.animationView.backgroundColor = .green
                        self.view.layoutIfNeeded()
                    }
                }
            }
        }
        
    }
    
}
