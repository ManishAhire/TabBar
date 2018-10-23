//
//  FirstViewController.swift
//  TabBar
//
//  Created by Manish Ahire on 22/10/18.
//  Copyright © 2018 Manish Ahire. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    //MARK:- Outlets
    @IBOutlet weak var tblView: UITableView!
    
    //MARK:- Variables
    var arrData : [[String:Any]] = [
        
        [
            "img" : "user1",
            "name" : "User 1"
        ],
        
        [
            "img" : "user2",
            "name" : "User 2"
        ],
        
        [
            "img" : "user3",
            "name" : "User 3"
        ],
        
        [
            "img" : "user4",
            "name" : "User 4"
        ],
        
        [
            "img" : "user5",
            "name" : "User 5"
        ],
    ]
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "User List"
        tblView.tableFooterView = UIView()
    }
}

extension FirstViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let imgUser = cell.viewWithTag(1) as! UIImageView
        let lblName = cell.viewWithTag(2) as! UILabel
        
        if let imgName = (arrData[indexPath.row])["img"] as? String {
           imgUser.image = UIImage(named: imgName)
        }
        
        lblName.text = (arrData[indexPath.row])["name"] as? String
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let userVC = storyboard?.instantiateViewController(withIdentifier: "UserDetails") as! UserDetailsViewController
        userVC.dicUserData = arrData[indexPath.row]
        navigationController?.pushViewController(userVC, animated: true)
    }
}
