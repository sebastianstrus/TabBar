//
//  ViewController.swift
//  MyTabBar
//
//  Created by Sebastian Strus on 2018-04-10.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit


var tabBarVisible = false
class ViewController: UIViewController {

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
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
            self.shapeView.frame = CGRect(x: self.shapeView.frame.origin.x, y: self.shapeView.frame.origin.y - 120, width: self.shapeView.frame.width, height: self.shapeView.frame.height)
            
            self.questionImage.alpha = 1.0
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.1, options: [], animations: {
            self.btn3.frame = CGRect(x: self.self.btn3.frame.origin.x, y: self.self.btn3.frame.origin.y - 60, width: self.self.btn3.frame.width, height: self.self.btn3.frame.height)
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.25, options: [], animations: {
            self.btn2.frame = CGRect(x: self.self.btn2.frame.origin.x, y: self.self.btn2.frame.origin.y - 60, width: self.self.btn2.frame.width, height: self.self.btn2.frame.height)
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.25, options: [], animations: {
            self.btn4.frame = CGRect(x: self.self.btn4.frame.origin.x, y: self.self.btn4.frame.origin.y - 60, width: self.self.btn4.frame.width, height: self.self.btn4.frame.height)
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.4, options: [], animations: {
            self.btn1.frame = CGRect(x: self.self.btn1.frame.origin.x, y: self.self.btn1.frame.origin.y - 60, width: self.self.btn1.frame.width, height: self.self.btn1.frame.height)
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.4, options: [], animations: {
            self.btn5.frame = CGRect(x: self.self.btn5.frame.origin.x, y: self.self.btn5.frame.origin.y - 60, width: self.self.btn5.frame.width, height: self.self.btn5.frame.height)
        }, completion: nil)
        
        
        
    }
    
    func hideTabBar() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
            self.shapeView.frame = CGRect(x: self.shapeView.frame.origin.x, y: self.shapeView.frame.origin.y + 120, width: self.shapeView.frame.width, height: self.shapeView.frame.height)
            
            self.questionImage.alpha = 0.0
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.1, options: [], animations: {
            self.btn1.frame = CGRect(x: self.self.btn1.frame.origin.x, y: self.self.btn1.frame.origin.y + 60, width: self.self.btn1.frame.width, height: self.self.btn1.frame.height)
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.1, options: [], animations: {
            self.btn5.frame = CGRect(x: self.self.btn5.frame.origin.x, y: self.self.btn5.frame.origin.y + 60, width: self.self.btn5.frame.width, height: self.self.btn5.frame.height)
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.3, options: [], animations: {
            self.btn2.frame = CGRect(x: self.self.btn2.frame.origin.x, y: self.self.btn2.frame.origin.y + 60, width: self.self.btn2.frame.width, height: self.self.btn2.frame.height)
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.3, options: [], animations: {
            self.btn4.frame = CGRect(x: self.self.btn4.frame.origin.x, y: self.self.btn4.frame.origin.y + 60, width: self.self.btn4.frame.width, height: self.self.btn4.frame.height)
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.4, options: [], animations: {
            self.btn3.frame = CGRect(x: self.self.btn3.frame.origin.x, y: self.self.btn3.frame.origin.y + 60, width: self.self.btn3.frame.width, height: self.self.btn3.frame.height)
        }, completion: nil)
        
        
        
    }

}

