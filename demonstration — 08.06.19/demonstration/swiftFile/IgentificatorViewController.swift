//
//  IgentificatorViewController.swift
//  demonstration
//
//  Created by Умид Халилов on 26/05/2019.
//  Copyright © 2019 Умид Халилов. All rights reserved.
//

import UIKit

class IgentificatorViewController: UIViewController {

    @IBOutlet weak var mpLbl: UILabel!
    var proverka = 0
    struct globalPer {
        static var prov = false
        static var mp = "+7"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.becomeFirstResponder() // для shake
        IgentificatorViewController.globalPer.prov = true
        mpLbl.text = IgentificatorViewController.globalPer.mp
        self.tabBarController?.tabBar.isHidden = false
        
    }
    

    
    
    //кнопки начало
    @IBAction func btn1(_ sender: Any)
    {
       
        
        if IgentificatorViewController.globalPer.mp == ""
        {
            IgentificatorViewController.globalPer.mp += "1"
        }
        else
        {
            
            IgentificatorViewController.globalPer.mp += "1"
        }
        proverka += 1
        mpLbl.text = IgentificatorViewController.globalPer.mp
        segueMen()
        
        
    }
    @IBAction func btn2(_ sender: Any)
    {
        
        if IgentificatorViewController.globalPer.mp == ""
        {
            IgentificatorViewController.globalPer.mp += "2"
        }
        else
        {
            
            IgentificatorViewController.globalPer.mp += "2"
        }
        proverka += 1
        mpLbl.text = IgentificatorViewController.globalPer.mp
        segueMen()
        
    }
    @IBAction func btn3(_ sender: Any)
    {
        if IgentificatorViewController.globalPer.mp == ""
        {
            IgentificatorViewController.globalPer.mp += "3"
        }
        else
        {
            
            IgentificatorViewController.globalPer.mp += "3"
        }
        proverka += 1
        mpLbl.text = IgentificatorViewController.globalPer.mp
        segueMen()
        
    }
    @IBAction func btn4(_ sender: Any)
    {
        if IgentificatorViewController.globalPer.mp == ""
        {
            IgentificatorViewController.globalPer.mp += "4"
        }
        else
        {
            
            IgentificatorViewController.globalPer.mp += "4"
        }
        proverka += 1
        mpLbl.text = IgentificatorViewController.globalPer.mp
        segueMen()
        
    }
    @IBAction func btn5(_ sender: Any)
    {
        if IgentificatorViewController.globalPer.mp == ""
        {
            IgentificatorViewController.globalPer.mp += "5"
        }
        else
        {
            
            IgentificatorViewController.globalPer.mp += "5"
        }
        proverka += 1
        mpLbl.text = IgentificatorViewController.globalPer.mp
        segueMen()
        
    }
    @IBAction func btn6(_ sender: Any)
    {
        if IgentificatorViewController.globalPer.mp == ""
        {
            IgentificatorViewController.globalPer.mp += "6"
        }
        else
        {
            
            IgentificatorViewController.globalPer.mp += "6"
        }
        proverka += 1
        mpLbl.text = IgentificatorViewController.globalPer.mp
        segueMen()
        
    }
    @IBAction func btn7(_ sender: Any)
    {
        if IgentificatorViewController.globalPer.mp == ""
        {
            IgentificatorViewController.globalPer.mp += "7"
        }
        else
        {
            
            IgentificatorViewController.globalPer.mp += "7"
        }
        proverka += 1
        mpLbl.text = IgentificatorViewController.globalPer.mp
        segueMen()
        
    }
    @IBAction func btn8(_ sender: Any)
    {
        if IgentificatorViewController.globalPer.mp == ""
        {
            IgentificatorViewController.globalPer.mp += "8"
        }
        else
        {
            
            IgentificatorViewController.globalPer.mp += "8"
        }
        proverka += 1
        mpLbl.text = IgentificatorViewController.globalPer.mp
        segueMen()
    }
    @IBAction func btn9(_ sender: Any)
    {
        if IgentificatorViewController.globalPer.mp == ""
        {
            IgentificatorViewController.globalPer.mp += "9"
        }
        else
        {
            
            IgentificatorViewController.globalPer.mp += "9"
        }
        proverka += 1
        mpLbl.text = IgentificatorViewController.globalPer.mp
        segueMen()
    }
    @IBAction func btn0(_ sender: Any)
    {
        if IgentificatorViewController.globalPer.mp == ""
        {
            IgentificatorViewController.globalPer.mp += "0"
        }
        else
        {
            
            IgentificatorViewController.globalPer.mp += "0"
        }
        proverka += 1
        mpLbl.text = IgentificatorViewController.globalPer.mp
        segueMen()
    }
    
    @IBAction func delBtn(_ sender: Any)
    {
        if IgentificatorViewController.globalPer.mp == ""
        {
            print("Нечего удалять!")
        }
        else
        {
            let endIndex = IgentificatorViewController.globalPer.mp.index(IgentificatorViewController.globalPer.mp.endIndex, offsetBy: -1)
            let truncated = IgentificatorViewController.globalPer.mp.substring(to: endIndex)
            IgentificatorViewController.globalPer.mp = truncated
            mpLbl.text = String(IgentificatorViewController.globalPer.mp)
            proverka -= 1
            
        }
    }
    
    //кнопки конец
    
    func segueMen()
    {
        
        if IgentificatorViewController.globalPer.mp.count == 12
        {
            // create the alert
            let alert = UIAlertController(title: "Правильно введен номер ?", message: IgentificatorViewController.globalPer.mp, preferredStyle: UIAlertController.Style.alert)
            
            // add the actions (buttons)
            alert.addAction(UIAlertAction(title: "Да", style: UIAlertAction.Style.default, handler: { action in
                self.performSegue(withIdentifier: "segueCode", sender: self)
            }))
            alert.addAction(UIAlertAction(title: "Нет", style: UIAlertAction.Style.destructive, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    
    
    //событие при тряске начало
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    
    // Enable detection of shake motion
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        if motion == .motionShake
        {
              performSegue(withIdentifier: "segueCode", sender: self)
        }
    }
    //событие при тряске конец
    
   
        
//        if mpTxtFld.text == ""
//        {
//            mpTxtFld.attributedPlaceholder = NSAttributedString(string:"Вы не вписали номер", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
//        }
//        else
//        {
//            performSegue(withIdentifier: "segueCode", sender: self)
//        }
        

        
    
}
