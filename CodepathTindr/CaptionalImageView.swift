//
//  CaptionalImageView.swift
//  CodepathTindr
//
//  Created by Douglas on 3/24/16.
//  Copyright © 2016 Dougli. All rights reserved.
//

import UIKit

class CaptionalImageView: UIView {

    
    @IBOutlet var contentView: UIView!
    
    @IBOutlet var avatar: UIImageView!
    
    var originalCenterX: CGFloat?
    
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    func initSubviews() {
        // standard initialization logic
        let nib = UINib(nibName: "CaptionalImageView", bundle: nil)
        nib.instantiateWithOwner(self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
        
        // custom initialization logic
    }
    
    @IBAction func onPanGesture(sender: UIPanGestureRecognizer) {
       
        let point = sender.locationInView(contentView)
        var initial = avatar.center
        var velocity = sender.velocityInView(contentView)
        
        //Block for milestone 5 cause it was getting repetative
        let block = {() -> Void in
            self.avatar.transform = CGAffineTransformIdentity
            self.avatar.center.x = self.originalCenterX!
        }
        
        
        if sender.state == UIGestureRecognizerState.Began{
            initial = avatar.center
        }else if sender.state == UIGestureRecognizerState.Changed{
            UIView.animateWithDuration(1, animations: { () -> Void in
                self.avatar.center = CGPoint(x:point.x , y: initial.y)
                if(point.y > initial.y){ //If user drags from bottom half (since we used center) we reverse the rotation
                    velocity.x *= -1
                }
                if(velocity.x > 0){
                    self.avatar.transform = CGAffineTransformMakeRotation(0.34906585)
                }else{
                    self.avatar.transform = CGAffineTransformMakeRotation(-0.349076585)
                }
            })
        }else{
            /*Milestone 5:
            If the x translation > 50, animate the photo off the screen to the right.
            If the x translation < -50, animate the photo off the screen to the left.
            Otherwise, restore the original center and transform.*/

            UIView.animateWithDuration(0.75, animations: { () -> Void in
                if point.x - self.originalCenterX! > 50{ //Alright fam 50 is way too little
                    self.avatar.center.x += self.bounds.width
                    let resetTime = dispatch_time(DISPATCH_TIME_NOW, Int64(1 * Double(NSEC_PER_SEC)))
                    dispatch_after(resetTime, dispatch_get_main_queue(), block)
                }else if point.x - self.originalCenterX! < -50{
                    self.avatar.center.x -= self.bounds.width
                    let resetTime = dispatch_time(DISPATCH_TIME_NOW, Int64(1 * Double(NSEC_PER_SEC)))
                    dispatch_after(resetTime, dispatch_get_main_queue(), block)
                }else{
                    //restore original center and transform... handily in our block :)
                    block()
                }
            })
        }
    }
    
    func setOriginalCenter(){
        print("COUNTING")
        originalCenterX = avatar.center.x
        print(originalCenterX)
        
    }
}
