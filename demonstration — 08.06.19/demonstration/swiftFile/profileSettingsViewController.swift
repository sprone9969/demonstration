//
//  profileSettingsViewController.swift
//  demonstration
//
//  Created by Умид Халилов on 12/05/2019.
//  Copyright © 2019 Умид Халилов. All rights reserved.
//

import UIKit

class profileSettingsViewController: UIViewController {

    @IBOutlet weak var nameTxtFild: UITextField!
    @IBOutlet weak var surnameTxtFld: UITextField!
    @IBOutlet weak var emailTxtFld: UITextField!
    @IBOutlet weak var mpTxtFld: UITextField!
    @IBOutlet weak var caphTxtFld: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTxtFild.attributedPlaceholder = NSAttributedString(string:"Ваше имя", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        surnameTxtFld.attributedPlaceholder = NSAttributedString(string:"Ваша фамилия", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        emailTxtFld.attributedPlaceholder = NSAttributedString(string:"Ваш E-mail", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        mpTxtFld.attributedPlaceholder = NSAttributedString(string:"Ваш номер телефона", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        caphTxtFld.attributedPlaceholder = NSAttributedString(string:"Код из смс", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
    }
    
    
    @IBAction func hideBtn(_ sender: Any)
    {
         view.endEditing(true)
    }
    
    @IBAction func backBtn(_ sender: Any)
    {
    performSegue(withIdentifier: "segueBackToMenue", sender: self)
    }
    
    

}
