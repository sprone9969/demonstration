//
//  codeSmsViewController.swift
//  demonstration
//
//  Created by Умид Халилов on 26/05/2019.
//  Copyright © 2019 Умид Халилов. All rights reserved.
//

import UIKit

class codeSmsViewController: UIViewController {

    @IBOutlet weak var codeLbl: UILabel!
    var code = ""
    var proverka = 0
    var sms = "0000"
    //var per :Int
    override func viewDidLoad() {
        super.viewDidLoad()
        self.becomeFirstResponder() 
        // Do any additional setup after loading the view.
    }
    @IBAction func btn1(_ sender: Any)
    {
        if code == ""
        {
            code += "1"
        }
        else
        {
            
            code += "1"
        }
        proverka += 1
        codeLbl.text = code
        segueMen()
        
       
    }
    @IBAction func btn2(_ sender: Any)
    {

        if code == ""
        {
            code += "2"
        }
        else
        {
            
            code += "2"
        }
        proverka += 1
        codeLbl.text = code
        segueMen()
        
    }
    @IBAction func btn3(_ sender: Any)
    {
        if code == ""
        {
            code += "3"
        }
        else
        {
            
            code += "3"
        }
        proverka += 1
        codeLbl.text = code
        segueMen()
        
    }
    @IBAction func btn4(_ sender: Any)
    {
        if code == ""
        {
            code += "4"
        }
        else
        {
            
            code += "4"
        }
        proverka += 1
        codeLbl.text = code
        segueMen()
        
    }
    @IBAction func btn5(_ sender: Any)
    {
        if code == ""
        {
            code += "5"
        }
        else
        {
            
            code += "5"
        }
        proverka += 1
        codeLbl.text = code
        segueMen()
        
    }
    @IBAction func btn6(_ sender: Any)
    {
        if code == ""
        {
            code += "6"
        }
        else
        {
            
            code += "6"
        }
        proverka += 1
        codeLbl.text = code
        segueMen()
        
    }
    @IBAction func btn7(_ sender: Any)
    {
        if code == ""
        {
            code += "7"
        }
        else
        {
            
            code += "7"
        }
        proverka += 1
        codeLbl.text = code
        segueMen()
        
    }
    @IBAction func btn8(_ sender: Any)
    {
        if code == ""
        {
            code += "8"
        }
        else
        {
            
            code += "8"
        }
        proverka += 1
        codeLbl.text = code
        segueMen()
    }
    @IBAction func btn9(_ sender: Any)
    {
        if code == ""
        {
            code += "9"
        }
        else
        {
            
            code += "9"
        }
        proverka += 1
        codeLbl.text = code
        segueMen()
    }
    @IBAction func btn0(_ sender: Any)
    {
        if code == ""
        {
            code += "0"
        }
        else
        {
            
            code += "0"
        }
        proverka += 1
        codeLbl.text = code
        segueMen()
    }
    
    @IBAction func delBtn(_ sender: Any)
    {
        if code == ""
        {
           print("Нечего удалять!")
        }
        else
        {
           let endIndex = code.index(code.endIndex, offsetBy: -1)
            let truncated = code.substring(to: endIndex)
            code = truncated
            codeLbl.text = String(code)
            proverka -= 1
            
        }
    }
    func segueMen() {
        if proverka == 4
        {
            if code == sms
            {
                performSegue(withIdentifier: "segueMenu", sender: self)
            }
            else
            {
                code = ""
                proverka = 0
                print("Код не верный")
                
                //alert начало
                let alert = UIAlertController(title: "Ошибка", message: "Неверный код из смс", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                    switch action.style{
                    case .default:
                        print("default")
                        
                    case .cancel:
                        print("cancel")
                        
                    case .destructive:
                        print("destructive")
                        
                        
                    }}))
                self.present(alert, animated: true, completion: nil)
                //alert конец
                codeLbl.text = ""
            }
        }
    }
  
    //событие при трясение начало
    // We are willing to become first responder to get shake motion
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            performSegue(withIdentifier: "segueMenu", sender: self)
        }
    }
    //событие при трясение конец
    
    
}
