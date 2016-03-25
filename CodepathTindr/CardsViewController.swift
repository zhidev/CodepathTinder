//
//  CardsViewController.swift
//  CodepathTindr
//
//  Created by Douglas on 3/24/16.
//  Copyright © 2016 Dougli. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

    
    @IBOutlet var avatar: CaptionalImageView!
    @IBOutlet var panGestureRecognizer: UIPanGestureRecognizer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatar.avatar.image = UIImage(named: "ryan")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*@IBAction func onPanGesture(sender: UIPanGestureRecognizer) {
        let point = sender.locationInView(self.view)
        var initial = avatar.center
        if sender.state == UIGestureRecognizerState.Began{
            initial = avatar.center
        }else if sender.state == UIGestureRecognizerState.Changed{
            UIView.animateWithDuration(1, animations: { () -> Void in
                self.avatar.center = CGPoint(x:point.x , y: initial.y)
            })
        }else{
            
        }
    }*/


}
