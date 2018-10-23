//
//  SecondViewController.swift
//  TabBar
//
//  Created by Manish Ahire on 22/10/18.
//  Copyright © 2018 Manish Ahire. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var heightContentView: NSLayoutConstraint!
    @IBOutlet weak var lblEmail: UILabel!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "About Us"
        
        heightContentView.constant = lblEmail.frame.origin.y
    }


}

