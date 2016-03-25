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
        let nib = UINib(nibName: "CaptionableImageView", bundle: nil)
        nib.instantiateWithOwner(self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
            
        // custom initialization logic
        //contentView.
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
