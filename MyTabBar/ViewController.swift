//
//  ViewController.swift
//  MyTabBar
//
//  Created by Sebastian Strus on 2018-04-10.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit


var speed: Float = 2.0
var tabBarVisible = false

class ViewController: UIViewController {

    @IBOutlet weak var twoButtonsView: UIView!
    @IBOutlet weak var rightButton: UIButton!
    
    @IBOutlet weak var shapeView: UIView!
    @IBOutlet weak var shapeImage: UIImageView!
    
    @IBOutlet weak var tabBarView: UIView!
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    
    @IBOutlet weak var questionNumber: UILabel!
    
    @IBOutlet weak var questionImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionImage.alpha = 0
        tabBarView.clipsToBounds = true
        
        
        shapeImage.image = UIImage(named:"shape")?.withRenderingMode(.alwaysTemplate)
        shapeImage.tintColor = UIColor.orange
        
        
        
        btn2.transform = CGAffineTransform(rotationAngle: self.radians(-30))
        btn4.transform = CGAffineTransform(rotationAngle: self.radians(30))

        
    }

    @IBAction func leftButtonPressed(_ sender: UIButton) {
        questionNumber.text = "2/20"
        if tabBarVisible {
            hideTabBar()
            
            tabBarVisible = false
        }
        
    }
    @IBAction func rightButtonPressed(_ sender: UIButton) {
        questionNumber.text = "1/20"
        rightButton.setTitle("Next",for: .normal)
        if !tabBarVisible {
            showTabBar()
            
            tabBarVisible = true
        }
    }
    

    
    func showTabBar() {
        UIView.animate(withDuration: TimeInterval(speed * 1.0), delay: 0.0, options: [], animations: {
            self.shapeView.transform = CGAffineTransform(translationX: 0, y: -120)
            
            self.questionImage.alpha = 1.0
        }, completion: nil)
        
        UIView.animate(withDuration: TimeInterval(speed * 0.5), delay: TimeInterval(speed * 0.2), options: [], animations: {
            self.btn3.transform = CGAffineTransform(translationX: 0, y: -60)
        }, completion: nil)
        
        UIView.animate(withDuration: TimeInterval(speed * 0.5), delay: TimeInterval(speed * 0.3), options: [], animations: {
            self.twoButtonsView.transform = CGAffineTransform(translationX: 0, y: -60)

        }, completion: nil)
        UIView.animate(withDuration: TimeInterval(speed * 0.4), delay: TimeInterval(speed * 0.4), options: [], animations: {
            self.btn2.transform = CGAffineTransform(rotationAngle: self.radians(0))
            self.btn4.transform = CGAffineTransform(rotationAngle: self.radians(0))
        }, completion: nil)

        UIView.animate(withDuration: TimeInterval(speed * 0.5), delay: TimeInterval(speed * 0.4), options: [], animations: {
            self.btn1.transform = CGAffineTransform(translationX: 0, y: -60)
            self.btn5.transform = CGAffineTransform(translationX: 0, y: -60)
        }, completion: nil)
        

        
        
    }
    
    /*
     ERROR
     self.shapeView.transform = CGAffineTransform(translationX: 0, y: 120) doesn't work.
     Apple Technical Support:
    iOS 8 is currently exhibiting a known bug in UIKit animations where transform animations get the wrong fromValue (primarily affecting the position of animated objects, making them appear to “jump” unexpectedly at the start on an animation).
    
    [...]
    
    The workaround until a potential fix is delivered is to drop down to Core Animation APIs to code your animations.
     */
    
    func hideTabBar() {
        UIView.animate(withDuration: TimeInterval(speed * 1.0), delay: 0.0, options: [], animations: {
            self.shapeView.transform = CGAffineTransform(translationX: 0, y: 120)
            
            self.questionImage.alpha = 0.0
        }, completion: nil)
        
        UIView.animate(withDuration: TimeInterval(speed * 0.5), delay: TimeInterval(speed * 0.14), options: [], animations: {
            self.btn1.transform = CGAffineTransform(translationX: 0, y: 60)
            self.btn5.transform = CGAffineTransform(translationX: 0, y: 60)
        }, completion: nil)
        

        UIView.animate(withDuration: TimeInterval(speed * 0.5), delay: TimeInterval(speed * 0.2), options: [], animations: {
            self.twoButtonsView.transform = CGAffineTransform(translationX: 0, y: 60)
        }, completion: nil)
        UIView.animate(withDuration: TimeInterval(speed * 0.7), delay: TimeInterval(speed * 0.1), options: [], animations: {
            self.btn2.transform = CGAffineTransform(rotationAngle: self.radians(-30))
            self.btn4.transform = CGAffineTransform(rotationAngle: self.radians(30))
        }, completion: nil)
        

        UIView.animate(withDuration: TimeInterval(speed * 0.5), delay: TimeInterval(speed * 0.25), options: [], animations: {
            self.btn3.transform = CGAffineTransform(translationX: 0, y: 60)
        }, completion: nil)
        
        
        
    }
    
    func radians(_ degrees: Double) -> CGFloat {
        return CGFloat(degrees * .pi / 180)
    }

}



/*
You left out the / 180 on CGFloat(180 * M_PI). Try:
UIView.animateWithDuration(1.0, animations: {
self.arrowImageView.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
})
*/

