//
//  SelectTypeViewController.swift
//  demonstration
//
//  Created by Умид Халилов on 05/05/2019.
//  Copyright © 2019 Умид Халилов. All rights reserved.
//

import UIKit

class SelectTypeViewController: UIViewController {

    @IBOutlet weak var nogtiVnes: UIButton!
    @IBOutlet weak var zensieUslygiVnes: UIButton!
    @IBOutlet weak var detskieUslygiVnes: UIButton!
    @IBOutlet weak var myrzkieUslugiVnes: UIButton!
    @IBOutlet weak var akciVnes: UIButton!
    
    struct globalPer {
        static var vidUslygi = 0
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if tabBarController?.tabBar.isHidden ==  true
        {
            tabBarController?.tabBar.isHidden =  false
        }
        
        if StartUITabBarController.globalPer.proverka == false
        {
            
            // create the alert
            let alert = UIAlertController(title: "Предупреждение!", message: "Для правильной записи, Вам стоит зарегестрироваться", preferredStyle: UIAlertController.Style.alert)
            
            // add the actions (buttons)
            alert.addAction(UIAlertAction(title: "Регистрация", style: UIAlertAction.Style.default, handler: { action in
                self.performSegue(withIdentifier: "segueIgent", sender: self)
            }))
            alert.addAction(UIAlertAction(title: "Отмена", style: UIAlertAction.Style.destructive, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }  
    }
    
    @IBAction func nogtiBtn(_ sender: Any)
    {
        SelectTypeViewController.globalPer.vidUslygi = 0
        performSegue(withIdentifier: "segueForChoiseOfProcedure", sender: self)
    }
    @IBAction func zenskieUslygiBtn(_ sender: Any)
    {
        SelectTypeViewController.globalPer.vidUslygi = 1
        performSegue(withIdentifier: "segueForChoiseOfProcedure", sender: self)
    }
    @IBAction func myrzkieUslugiBtn(_ sender: Any)
    {
        SelectTypeViewController.globalPer.vidUslygi = 3
        performSegue(withIdentifier: "segueForChoiseOfProcedure", sender: self)
    }
    @IBAction func detkieUslugiBtn(_ sender: Any)
    {
        SelectTypeViewController.globalPer.vidUslygi = 2
        performSegue(withIdentifier: "segueForChoiseOfProcedure", sender: self)
    }
    @IBAction func akciBtn(_ sender: Any)
    {
        performSegue(withIdentifier: "segueAkcii", sender: self) // для акции что нибудь другое придумай!
    }
    
//   //градиент начало
//    func setGradient()
//    {
//        let gradient: CAGradientLayer = CAGradientLayer()
//        gradient.colors = [UIColor(red:0.0/255, green:112.0/255, blue:82.0/255, alpha:0.5).cgColor, UIColor.white.cgColor]
//        //gradient.locations = [0.0 , 1.0]
//        gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
//        gradient.endPoint = CGPoint(x: 1.5, y: 1.0)
//        gradient.frame = nogtiVnes.layer.frame
//        nogtiVnes.layer.insertSublayer(gradient, at: 0)
//    }
//    //градиент конец
}
