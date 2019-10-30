//
//  SettingsViewController.swift
//  demonstration
//
//  Created by Умид Халилов on 12/05/2019.
//  Copyright © 2019 Умид Халилов. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var picPeople: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if picPeople.image == UIImage(named: "avatar.png")
        {
            picPeople.layer.cornerRadius = 0.5 * picPeople.bounds.size.width
            picPeople.layer.borderWidth = 4.0
            picPeople.layer.borderColor = (UIColor(red: 246.0/255.0, green: 217.0/255.0, blue: 204.0/255.0, alpha: 1.0)).cgColor
        }
        
    }
    
    @IBAction func notificationBtn(_ sender: Any)
    {
        performSegue(withIdentifier: "segueNotification", sender: self)
    }
    
    @IBAction func recordsBtn(_ sender: Any)
    {
        performSegue(withIdentifier: "segueRecods", sender: self)
    }
    @IBAction func changProfileBtn(_ sender: Any)
    {
       performSegue(withIdentifier: "segueProfileSettings", sender: self)
    }
    @IBAction func myBonus(_ sender: Any)
    {
     performSegue(withIdentifier: "segueBonus", sender: self)
    }
    
    

  

}
