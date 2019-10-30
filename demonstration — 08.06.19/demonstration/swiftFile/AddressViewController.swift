//
//  AddressViewController.swift
//  demonstration
//
//  Created by Умид Халилов on 05/05/2019.
//  Copyright © 2019 Умид Халилов. All rights reserved.
//

import UIKit

class AddressViewController: UIViewController {

    
    @IBOutlet weak var buttTEST: UIButton!
    struct global {
        static var PinOnMap = " "
        static var mp = ""
        
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
      

        // Do any additional setup after loading the view.
    }
    
    @IBAction func firstPin(_ sender: Any)
    {
        AddressViewController.global.PinOnMap = "Москва, Ильинка 8-10"
        AddressViewController.global.mp = "8(499)123-32-41"
        //pereh()
        performSegue(withIdentifier: "segueForAddress", sender: self)
        
    }
    @IBAction func secondPin(_ sender: Any)
    {
        AddressViewController.global.PinOnMap = "Москва, Черняховского 1"
        AddressViewController.global.mp = "8(499)999-99-99"
        //pereh()
        performSegue(withIdentifier: "segueForAddress", sender: self)
        
    }
    
    @IBAction func thirdPin(_ sender: Any)
    {
        AddressViewController.global.PinOnMap = "Санкт-Петербург, Кронштадт, Гражданская 17"
        AddressViewController.global.mp = "8(499)888-88-88"
       // pereh()
        performSegue(withIdentifier: "segueForAddress", sender: self)
    }
    @IBAction func fourthBtn(_ sender: Any)
    {
        AddressViewController.global.PinOnMap = "Тольятти, ул. Баныкина, 16А"
        AddressViewController.global.mp = "8(499)111-11-11"
        //pereh()
        performSegue(withIdentifier: "segueForAddress", sender: self)
    }
    

}
