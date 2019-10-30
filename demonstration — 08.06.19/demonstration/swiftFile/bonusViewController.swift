//
//  bonusViewController.swift
//  demonstration
//
//  Created by Умид Халилов on 12/05/2019.
//  Copyright © 2019 Умид Халилов. All rights reserved.
//

import UIKit

class bonusViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any)
    {
        performSegue(withIdentifier: "segueBackToMenue", sender: self)
    }
    
   
}
