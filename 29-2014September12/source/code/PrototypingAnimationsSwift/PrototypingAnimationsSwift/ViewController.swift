//
//  ViewController.swift
//  PrototypingAnimationsSwift
//
//  Created by metodowhite on 12/09/14.
//  Copyright (c) 2014 metodowhite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        let coloredSquare = UIView()
        //        coloredSquare.backgroundColor = UIColor.blueColor()
        //
        //        coloredSquare.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
        //
        //        self.view.addSubview(coloredSquare)
        //
        //        let duration = 1.0
        //        let delay = 0.0
        //        let options = UIViewAnimationOptions.CurveEaseInOut | UIViewAnimationOptions.Repeat | UIViewAnimationOptions.Autoreverse
        //        let damping = 0.5
        //        let velocity = 1.0
        
        
        //Basic
        //        UIView.animateWithDuration(duration, animations: {
        //            coloredSquare.backgroundColor = UIColor.redColor()
        //            coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
        //        })
        
        //        UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
        //            coloredSquare.backgroundColor = UIColor.redColor()
        //            coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
        //            },
        //            completion: {})
        
        //Constants
        //        UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
        //            coloredSquare.backgroundColor = UIColor.redColor()
        //            coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
        //
        //            }, completion: nil)
        
        //Physics
        //        UIView.animateWithDuration(duration, delay: delay, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: options, animations: {
        //            coloredSquare.backgroundColor = UIColor.redColor()
        //            coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
        //        }, completion: nil)
        
        
        //        UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
        //            coloredSquare.backgroundColor = UIColor.redColor()
        //            coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
        //
        //            }, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func animateButtonPressed(sender: AnyObject) {
        
        
        for loopNumber in 0...10 {
            
            let size: CGFloat = CGFloat( Int(rand()) % 40 + 20.0)
            let yPosition: CGFloat = CGFloat( Int(rand()) % 200 + 20.0)
            
            let coloredSquare = UIView()
            
            // UIImage(named: "iconico")
            
            coloredSquare.backgroundColor = UIColor.blueColor()
            coloredSquare.frame = CGRect(x: 0, y:yPosition, width: size, height: size)
            
            self.view.addSubview(coloredSquare)
            
            let duration = 1.0
            let delay = NSTimeInterval(((Int(rand()) % 900) + 100.0) / 1000.0)
            let options = UIViewAnimationOptions.CurveLinear
            
            // UIView.animateWithDuration(1.0, animations: {
            //     coloredSquare.backgroundColor = UIColor.redColor()
            //     coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
            // })
            
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                
                println(delay)
                
                coloredSquare.backgroundColor = UIColor.redColor()
                coloredSquare.frame = CGRectMake(320-size, yPosition, size, size)
                }, completion: { animationFinished in
                    coloredSquare.removeFromSuperview()
            })
            
        }
        
    }
    
}















