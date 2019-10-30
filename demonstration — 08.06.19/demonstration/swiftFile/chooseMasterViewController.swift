//
//  chooseMasterViewController.swift
//  demonstration
//
//  Created by Умид Халилов on 18/05/2019.
//  Copyright © 2019 Умид Халилов. All rights reserved.
//

import UIKit

class chooseMasterViewController: UIViewController {

    //объявляем каритнки начало
    @IBOutlet weak var pic1: UIImageView!
    @IBOutlet weak var pic2: UIImageView!
    @IBOutlet weak var pic3: UIImageView!
    @IBOutlet weak var pic4: UIImageView!
    @IBOutlet weak var pic5: UIImageView!
    @IBOutlet weak var pic6: UIImageView!
    //объявляем каритнки конец
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changPic()
        
    }
    
    @IBAction func backBtn(_ sender: Any)
    {
        performSegue(withIdentifier: "segueUslygi", sender: self)
    }
    
    
    
    //меняем размеры каритнки начало
    func changPic()
    {
        pic1.layer.cornerRadius = 0.5 * pic1.bounds.size.width
        pic1.layer.borderWidth = 4.0
        pic1.layer.borderColor = (UIColor(red: 246.0/255.0, green: 217.0/255.0, blue: 204.0/255.0, alpha: 1.0)).cgColor
        pic2.layer.cornerRadius = 0.5 * pic1.bounds.size.width
        pic2.layer.borderWidth = 4.0
        pic2.layer.borderColor = (UIColor(red: 246.0/255.0, green: 217.0/255.0, blue: 204.0/255.0, alpha: 1.0)).cgColor
        pic3.layer.cornerRadius = 0.5 * pic1.bounds.size.width
        pic3.layer.borderWidth = 4.0
        pic3.layer.borderColor = (UIColor(red: 246.0/255.0, green: 217.0/255.0, blue: 204.0/255.0, alpha: 1.0)).cgColor
        pic4.layer.cornerRadius = 0.5 * pic1.bounds.size.width
        pic4.layer.borderWidth = 4.0
        pic4.layer.borderColor = (UIColor(red: 246.0/255.0, green: 217.0/255.0, blue: 204.0/255.0, alpha: 1.0)).cgColor
        pic5.layer.cornerRadius = 0.5 * pic1.bounds.size.width
        pic5.layer.borderWidth = 4.0
        pic6.layer.borderColor = (UIColor(red: 246.0/255.0, green: 217.0/255.0, blue: 204.0/255.0, alpha: 1.0)).cgColor
    }
    //меняем размеры каритнки конец
    
    // действие при нажатие кнопок начало
    @IBAction func btn1(_ sender: Any)
    {
        performSegue(withIdentifier: "segueData", sender: self)
    }
    @IBAction func btn2(_ sender: Any)
    {
        performSegue(withIdentifier: "segueData", sender: self)
    }
    @IBAction func btn3(_ sender: Any)
    {
        performSegue(withIdentifier: "segueData", sender: self)
    }
    @IBAction func btn4(_ sender: Any)
    {
        performSegue(withIdentifier: "segueData", sender: self)
    }
    @IBAction func btn5(_ sender: Any)
    {
        performSegue(withIdentifier: "segueData", sender: self)
    }
    @IBAction func btn6(_ sender: Any)
    {
        performSegue(withIdentifier: "segueData", sender: self)
    }
    
    // действие при нажатие кнопок конец
}
