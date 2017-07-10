//
//  ViewController.swift
//  AutoLayoutPractice2
//
//  Created by Lane Faison on 7/9/17.
//  Copyright © 2017 Lane Faison. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var containerView1: UIView!
    var containerView2: UIView!
    var containerView3: UIView!
    
    var label1: UILabel!
    var label2: UILabel!
    
    var button1: UIButton!
    var button2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()


//        simpleView1()
//        simpleView2()
        complexView1()
    
    }
    
    func simpleView1() {
        let myView = UIView()
        myView.backgroundColor = UIColor.black
        myView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(myView)

        let leading = NSLayoutConstraint(item: myView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 50.0)
        
        let trailing = NSLayoutConstraint(item: myView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -50.0)
        
        let top = NSLayoutConstraint(item: myView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 100.0)
        
        let height = NSLayoutConstraint(item: myView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 120.0)
        
        let bottom = NSLayoutConstraint(item: myView, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottomMargin, multiplier: 1.0, constant: -250.0)
        
        self.view.addConstraints([leading,trailing,top,bottom])
        
    }
    
    func simpleView2() {
        let myView = UIView()
        myView.backgroundColor = UIColor.black
        self.view.addSubview(myView)
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        let centerHorizontally = NSLayoutConstraint(item: myView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        
        let centerVertically = NSLayoutConstraint(item: myView, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1.0, constant: 0.0)
        
        NSLayoutConstraint(item: myView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 120.0).isActive = true
        
        NSLayoutConstraint(item: myView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 70).isActive = true
        
        NSLayoutConstraint.activate([centerHorizontally,centerVertically])
    }
    
    func complexView1() {
        containerView1 = UIView()
        containerView1.backgroundColor = UIColor.black
        self.view.addSubview(containerView1)
        containerView1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: containerView1, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
        
        NSLayoutConstraint(item: containerView1, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 80.0).isActive = true
        
        NSLayoutConstraint(item: containerView1, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 150.0).isActive = true
        
        NSLayoutConstraint(item: containerView1, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100.0).isActive = true
        
    }

}

