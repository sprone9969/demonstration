//
//  NotificationViewController.swift
//  demonstration
//
//  Created by Умид Халилов on 11/05/2019.
//  Copyright © 2019 Умид Халилов. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any)
    {
        performSegue(withIdentifier: "segueBackToMenue", sender: self)
    }
    

}
