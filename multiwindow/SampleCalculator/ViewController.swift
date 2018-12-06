//
//  ViewController.swift
//  SampleCalculator
//
//  Created by Sunil on 28/09/18.
//  Copyright © 2018 Sunil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var firstViewController: FirstViewController!
    private var secondViewController: SecondViewController!

    var frame:CGRect = CGRect(x:0, y:0, width:0, height : 0)

    override func viewDidLoad() {
        super.viewDidLoad()
        frame = CGRect(x:view.frame.origin.x, y:view.frame.origin.y, width:view.frame.size.width, height : view.frame.size.height - 70)
        // Do any additional setup after loading the view, typically from a nib.
        firstViewController = storyboard?.instantiateViewController(withIdentifier: "First")as! FirstViewController
        firstViewController.view.frame = frame
        switchViewController(from: nil, to: firstViewController)
    }

    private func switchViewController (from fromVC: UIViewController?, to toVC : UIViewController?)
    {

        if fromVC != nil {
            fromVC!.willMove(toParent: nil)
            fromVC!.view.removeFromSuperview()
            fromVC!.removeFromParent()
        }

        if toVC != nil {
            self.addChild(toVC!)
            self.view.insertSubview(toVC!.view, at: 0)
            toVC!.didMove(toParent: self)
        }
    }

    @IBAction func switchViews(_ sender: UIBarButtonItem) {

        if firstViewController?.view.superview == nil {
            if firstViewController == nil{
                firstViewController = storyboard?.instantiateViewController(withIdentifier: "First") as! FirstViewController
            }
        } else if secondViewController?.view.superview == nil {
            if secondViewController == nil{
                secondViewController = storyboard?.instantiateViewController(withIdentifier: "Second") as! SecondViewController
            }
        }

        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)

        if firstViewController != nil && firstViewController!.view.superview != nil  {

            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            secondViewController.view.frame = frame
            switchViewController(from: firstViewController, to: secondViewController)
        } else{
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            firstViewController.view.frame = frame
            switchViewController(from: secondViewController, to: firstViewController)
        }
        UIView.commitAnimations()
    }



}

