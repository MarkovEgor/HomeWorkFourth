//
//  GalleryViewController.swift
//  HomeWorkFourth
//
//  Created by Egor Markov on 01.12.2020.
//

import UIKit

class GalleryViewController: UIViewController {

    //Mark : - IBOutlet
    @IBOutlet weak var indigoView: UIView!
    @IBOutlet weak var orageView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var constraintTralling: NSLayoutConstraint!
    @IBOutlet weak var constraintLeading: NSLayoutConstraint!
    
    
    //MARK: - Propirties
    private var isFlipped: Bool = false
    private var duration: Double = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.tabBarItem.image = UIImage(systemName: "rectangle.stack")
        navigationController?.tabBarController?.tabBar.tintColor = .black
        indigoView.layer.cornerRadius = 5
        greenView.layer.cornerRadius = 5
        orageView.layer.cornerRadius = 5
        
        let tapGestureIndigoView = UITapGestureRecognizer(target: self, action: #selector(anumationTransitionIndigoView))
        indigoView.addGestureRecognizer(tapGestureIndigoView)
        
        let tapGestureGreenView = UITapGestureRecognizer(target: self, action: #selector(anumationTransitionGreenView))
        greenView.addGestureRecognizer(tapGestureGreenView)
        
        let tapGestureOrageView = UITapGestureRecognizer(target: self, action: #selector(anumationTransitionOrageView))
        orageView.addGestureRecognizer(tapGestureOrageView)
    }
    
    
    //MARK: - FUNC
    
    @objc func anumationTransitionIndigoView() {
        isFlipped = !isFlipped
        let cardToFlip = isFlipped ? indigoView : greenView
        let bottomCard = isFlipped ? greenView : indigoView
        
        UIView.transition(from: cardToFlip!, to: bottomCard!, duration: duration, options: [.transitionFlipFromRight, .showHideTransitionViews], completion: nil)
    }
    
    @objc func anumationTransitionGreenView() {
        isFlipped = !isFlipped
        let cardToFlip = isFlipped ? indigoView : greenView
        let bottomCard = isFlipped ? greenView : indigoView
        
        UIView.transition(from: cardToFlip!, to: bottomCard!, duration: duration, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
    }
    
    @objc func anumationTransitionOrageView() {
        isFlipped = !isFlipped
        let randomCGFloatRed = CGFloat.random(in: 1...255)
        let randomCGFloatGreen = CGFloat.random(in: 1...255)
        let randomCGFloatBlue = CGFloat.random(in: 1...255)
        let color = UIColor(red: randomCGFloatRed/255, green:  randomCGFloatGreen/255, blue:  randomCGFloatBlue/255, alpha: 1)
        let tralling = CGFloat.random(in: 20...107)
        let leading = CGFloat.random(in: 20...107)
        
        
        UIView.animate(withDuration: duration) {
            self.orageView.backgroundColor = color
            self.constraintTralling.constant = tralling
            self.constraintLeading.constant = leading
            self.view.layoutIfNeeded()
        }
       
    }
    
}
