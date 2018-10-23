//
//  UserDetailsViewController.swift
//  TabBar
//
//  Created by Manish Ahire on 22/10/18.
//  Copyright © 2018 Manish Ahire. All rights reserved.
//

import UIKit

class UserDetailsViewController: UIViewController {

    //MARK:- Outlets
    @IBOutlet weak var imgUser: UIImageView!
    @IBOutlet weak var lblUserName: UILabel!
    
    //MARK:- Variables
    var dicUserData : [String:Any] = [:]
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "User Details"
        updateUI()
    }
    
    //MARK:- Update UI
    func updateUI() {
        
        
        DispatchQueue.main.async {
            
            self.imgUser.image = UIImage(named: self.dicUserData["img"] as! String)
            
            self.lblUserName.text = self.dicUserData["name"] as? String
        }
    }
}
