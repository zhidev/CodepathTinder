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
        avatar.setOriginalCenter()
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: "presentProfile:")
        avatar.addGestureRecognizer(tapGestureRecognizer)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func presentProfile(tapGesture: UITapGestureRecognizer){
        let vc = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
        self.presentViewController(vc, animated: true, completion: nil)
    }


}
