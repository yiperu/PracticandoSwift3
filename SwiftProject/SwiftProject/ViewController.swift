//
//  ViewController.swift
//  SwiftProject
//
//  Created by Henry AT on 7/1/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var animator: UIDynamicAnimator!
  var gravity: UIGravityBehavior!
		
		
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func btnCreateCircle(_ sender: Any) {
    
    let circle = circleView(color: getRandomColor())
    view.addSubview(circle)
    
    animator = UIDynamicAnimator(referenceView: view)
    gravity = UIGravityBehavior(items: [circle])
    animator.addBehavior(gravity)
    
      animateButton(sender as! UIButton)
    
  }
  
  
  
  func animateButton(_ sender: UIButton) {
    UIView.animate(withDuration: 1) {
      sender.backgroundColor = self.getRandomColor()
    }
  }
  
  func circleView(color: UIColor) -> UIView {
    
    let xRandom = Int(arc4random_uniform(320))
    let yRandom = Int(arc4random_uniform(500))
    
    let view = UIView(frame: CGRect(x: xRandom, y: yRandom, width: 50, height: 50))
    view.layer.cornerRadius = 25
    view.backgroundColor = color
    
    return view
  }
  
  
func getRandomColor() -> UIColor{
    
  let randomRed:CGFloat = CGFloat(drand48())
  
  let randomGreen:CGFloat = CGFloat(drand48())
    
  let randomBlue:CGFloat = CGFloat(drand48())
    
  return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    
  }

}

