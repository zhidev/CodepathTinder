//
//  ProfileViewController.swift
//  CodepathTindr
//
//  Created by Douglas on 3/31/16.
//  Copyright © 2016 Dougli. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var tapGestureRecognizer: UITapGestureRecognizer!
    
    
    @IBOutlet var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        profileImage.image = UIImage(named: "ryan")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func navBarTapped(sender: UITapGestureRecognizer) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
