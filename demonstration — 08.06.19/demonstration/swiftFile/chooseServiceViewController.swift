//
//  chooseServiceViewController.swift
//  demonstration
//
//  Created by Умид Халилов on 10/05/2019.
//  Copyright © 2019 Умид Халилов. All rights reserved.
//

import UIKit

class chooseServiceViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var scrolSize: UIView!
    //кнопки начало
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn10: UIButton!
    @IBOutlet weak var btn11: UIButton!
    @IBOutlet weak var btn12: UIButton!
    @IBOutlet weak var btn13: UIButton!
    @IBOutlet weak var btn14: UIButton!
    //кнопки конец
    //lable начало
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    @IBOutlet weak var lbl5: UILabel!
    @IBOutlet weak var lbl6: UILabel!
    @IBOutlet weak var lbl7: UILabel!
    @IBOutlet weak var lbl8: UILabel!
    @IBOutlet weak var lbl9: UILabel!
    @IBOutlet weak var lbl10: UILabel!
    @IBOutlet weak var lbl11: UILabel!
    @IBOutlet weak var lbl12: UILabel!
    @IBOutlet weak var lbl13: UILabel!
    @IBOutlet weak var lbl14: UILabel!
    //lable конец
    
    var proverka = [Bool] (repeating: false, count: 15)
    
    var sum = 0
    
    struct globalPer {
        
        static var perehod = false
        
        static var chooseUslyga = ""
        static var master = ""
        
        static var sum = 0
        static var uslygi = [String]()
        
        static var nogti = ["Маникюр с покрытием Beautix", "Маникюр", "Маникюр с покрытием Luxio", "Маникюр с покрытием (френч)", "Снятие гель-лак", "Дизайн ногтя", "Маникюр + укрепление системой IBX", "Ремонт ногтя", "Маникюр + полировка ногтей, придание блеска", "Покрытие гель-лаком Beautix", "Покрытие гель-лаком Luxio"]
        static var nogtiPrice = [1058,1125,3131,2412,2920,527,2432,3378,3860,1652,2920,3397]
        static var zhenskieUslygi = ["Женские услуги", "Стрижка челки", "Стрижка кончиков волос", "Полировка волос", "Педикюр", "Экспрес педюкюр", "Пилинг кожи головы", "Счастье для волос", "Маска мгновенного действия", "Повседневная укладка", "Укладка вечерняя", "Вечерная прическа", "Свадебная прическа", "Урок повседневной укладки"]
        static var zhenskieUslygiPrice = [2835,2051,1998,1510,3743,1686,2112,2301,506,3445,1341,2433,3538,2006,1296,2920,3397]
        static var detskieUslygi = ["Прокалывание ушей","Модельная стрижка для мальчиков", "Модельная стрижка для мальчиков", "Первая стрижка в жизни ребёнка", "Стрижка челки", "Подравнивание кончиков волос", "Фигурный выстриг волос", "Укладка волос", "Праздничная прическа", "Плетение косичек", "Мытье головы", "Глиттер тату","Детский маникюр", "Детский макияж"]
        static var detskieUslygiPrice = [817,1908,1265,1437,567,1811,2053,2829,2608,3624,3175,1445,1394,3654,1589]
        static var myrskieUslygi = ["Мужская стрижка","Стрижка бороды/усов", "Стрижка машинкой", "Укладка"]
        static var myrskieUslygiPrice = [2125,2078,2552,3877,962]
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(chooseServiceViewController.globalPer.nogti.count)
        
        switch SelectTypeViewController.globalPer.vidUslygi
        {
        case 0: nogti()
              //scrolSize.frame.size.height = CGFloat(71.5 * Double(chooseServiceViewController.globalPer.nogti.count))
        case 1: zhenskieUslygi()
        case 2: detskieUslygi()
        case 3: myrskieUslygi()
        default:
            print("error в переминование кнопок")
        }
        
      
        
    }
    
    
   
    @IBAction func backBtn(_ sender: Any)
    {
        
        performSegue(withIdentifier: "segueBackToMenue", sender: self)
    }
    
    

    @IBAction func btn1(_ sender: Any)
    {
        chooseServiceViewController.globalPer.chooseUslyga = (btn1.titleLabel!.text ?? nil)!
        print("услуга\(chooseServiceViewController.globalPer.chooseUslyga)")
        
        if proverka[0] == false
        {
            
            proverka[0] = true
            btn1.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 0.5)
            print(sum)
            
        }
        else
        {
            
            proverka[0] = false
            btn1.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 1)
            print(sum)
        }
        
    }
    @IBAction func btn2(_ sender: Any)
    {
        chooseServiceViewController.globalPer.chooseUslyga = (btn2.titleLabel!.text ?? nil)!
        print("услуга\(chooseServiceViewController.globalPer.chooseUslyga)")
        if proverka[1] == false
        {
            proverka[1] = true
            btn2.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 0.5)
            
        }
        else
        {
            proverka[1] = false
            
            btn2.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 1)
        }
    }
    @IBAction func btn3(_ sender: Any)
    {
       chooseServiceViewController.globalPer.chooseUslyga = (btn3.titleLabel!.text ?? nil)!
        print("услуга\(chooseServiceViewController.globalPer.chooseUslyga)")
        
        if proverka[2] == false
        {
            proverka[2] = true
            btn3.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 0.5)
            
        }
        else
        {
            proverka[2] = false
            
            btn3.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 1)
        }
    }
    @IBAction func btn4(_ sender: Any)
    {
        chooseServiceViewController.globalPer.chooseUslyga = (btn4.titleLabel!.text ?? nil)!
        print("услуга\(chooseServiceViewController.globalPer.chooseUslyga)")
        
        if proverka[3] == false
        {
            proverka[3] = true
            btn4.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 0.5)
            
        }
        else
        {
            proverka[3] = false
            
            btn4.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 1)
        }
    }
    @IBAction func btn5(_ sender: Any)
    {
        chooseServiceViewController.globalPer.chooseUslyga = (btn5.titleLabel!.text ?? nil)!
        print("услуга\(chooseServiceViewController.globalPer.chooseUslyga)")
        
        if proverka[4] == false
        {
            proverka[4] = true
            btn5.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 0.5)
            
        }
        else
        {
            proverka[4] = false
            
            btn5.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 1)
        }
    }
    @IBAction func btn6(_ sender: Any)
    {
        chooseServiceViewController.globalPer.chooseUslyga = (btn6.titleLabel!.text ?? nil)!
        print("услуга\(chooseServiceViewController.globalPer.chooseUslyga)")
        if proverka[5] == false
        {
            proverka[5] = true
            btn6.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 0.5)
            
        }
        else
        {
            proverka[5] = false
            
            btn6.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 1)
        }
    }
    @IBAction func btn7(_ sender: Any)
    {
        chooseServiceViewController.globalPer.chooseUslyga = (btn7.titleLabel!.text ?? nil)!
        print("услуга\(chooseServiceViewController.globalPer.chooseUslyga)")
        if proverka[6] == false
        {
            proverka[6] = true
            btn7.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 0.5)
            
        }
        else
        {
            proverka[6] = false
            
            btn7.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 1)
        }
    }
    @IBAction func btn8(_ sender: Any)
    {
        chooseServiceViewController.globalPer.chooseUslyga = (btn8.titleLabel!.text ?? nil)!
        print("услуга\(chooseServiceViewController.globalPer.chooseUslyga)")
        
        if proverka[7] == false
        {
            proverka[7] = true
            btn8.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 0.5)
            
        }
        else
        {
            proverka[7] = false
            
            btn8.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 1)
        }
    }
    @IBAction func btn9(_ sender: Any)
    {
        chooseServiceViewController.globalPer.chooseUslyga = (btn9.titleLabel!.text ?? nil)!
        print("услуга\(chooseServiceViewController.globalPer.chooseUslyga)")
        
        if proverka[8] == false
        {
            proverka[8] = true
            btn9.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 0.5)
            
        }
        else
        {
            proverka[8] = false
            
            btn9.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 1)
        }
    }
    @IBAction func btn10(_ sender: Any)
    {
        chooseServiceViewController.globalPer.chooseUslyga = (btn10.titleLabel!.text ?? nil)!
        print("услуга\(chooseServiceViewController.globalPer.chooseUslyga)")
        
        if proverka[9] == false
        {
            proverka[9] = true
            btn10.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 0.5)
            
        }
        else
        {
            proverka[9] = false
            
            btn10.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 1)
        }
    }
    @IBAction func btn11(_ sender: Any)
    {
        chooseServiceViewController.globalPer.chooseUslyga = (btn11.titleLabel!.text ?? nil)!
        print("услуга\(chooseServiceViewController.globalPer.chooseUslyga)")
        
        if proverka[10] == false
        {
            proverka[10] = true
            btn11.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 0.5)
            
        }
        else
        {
            proverka[10] = false
            
            btn11.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 1)
        }
    }
    @IBAction func btn12(_ sender: Any)
    {
        chooseServiceViewController.globalPer.chooseUslyga = (btn12.titleLabel!.text ?? nil)!
        print("услуга\(chooseServiceViewController.globalPer.chooseUslyga)")
        
        if proverka[11] == false
        {
            proverka[11] = true
            btn12.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 0.5)
            
        }
        else
        {
            proverka[11] = false
            
            btn12.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 1)
        }
    }
    @IBAction func btn13(_ sender: Any)
    {
        chooseServiceViewController.globalPer.chooseUslyga = (btn13.titleLabel!.text ?? nil)!
        print("услуга\(chooseServiceViewController.globalPer.chooseUslyga)")
        
        if proverka[12] == false
        {
            proverka[12] = true
            btn13.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 0.5)
            
        }
        else
        {
            proverka[12] = false
            
            btn13.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 1)
        }
    }
    @IBAction func btn14(_ sender: Any)
    {
        chooseServiceViewController.globalPer.chooseUslyga = (btn14.titleLabel!.text ?? nil)!
        print("услуга\(chooseServiceViewController.globalPer.chooseUslyga)")
        
        if proverka[13] == false
        {
            proverka[13] = true
            btn14.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 0.5)
            
        }
        else
        {
            proverka[13] = false
            
            btn14.backgroundColor = UIColor(red: 48/255, green: 113/255, blue: 82/255, alpha: 1)
        }

    }
    
    //нажатие на кнопки начало]
    
    
    
    func myrskieUslygi()
    {
        btn1.setTitle(chooseServiceViewController.globalPer.myrskieUslygi[0], for: .normal)
        btn2.setTitle(chooseServiceViewController.globalPer.myrskieUslygi[1], for: .normal)
        btn3.setTitle(chooseServiceViewController.globalPer.myrskieUslygi[2], for: .normal)
        btn4.setTitle(chooseServiceViewController.globalPer.myrskieUslygi[3], for: .normal)
        btn5.isHidden = true
        btn6.isHidden = true
        btn7.isHidden = true
        btn8.isHidden = true
        btn9.isHidden = true
        btn10.isHidden = true
        btn11.isHidden = true
        btn12.isHidden = true
        btn13.isHidden = true
        btn14.isHidden = true
        
        lbl1.text = String(chooseServiceViewController.globalPer.myrskieUslygiPrice[0])
        lbl2.text = String(chooseServiceViewController.globalPer.myrskieUslygiPrice[1])
        lbl3.text = String(chooseServiceViewController.globalPer.myrskieUslygiPrice[2])
        lbl4.text = String(chooseServiceViewController.globalPer.myrskieUslygiPrice[3])
        lbl5.isHidden = true
        lbl6.isHidden = true
        lbl7.isHidden = true
        lbl8.isHidden = true
        lbl9.isHidden = true
        lbl10.isHidden = true
        lbl11.isHidden = true
        lbl12.isHidden = true
        lbl13.isHidden = true
        lbl14.isHidden = true
        
        
    }
    
    func detskieUslygi()
    {
        btn1.setTitle(chooseServiceViewController.globalPer.detskieUslygi[0], for: .normal)
        btn2.setTitle(chooseServiceViewController.globalPer.detskieUslygi[1], for: .normal)
        btn3.setTitle(chooseServiceViewController.globalPer.detskieUslygi[2], for: .normal)
        btn4.setTitle(chooseServiceViewController.globalPer.detskieUslygi[3], for: .normal)
        btn5.setTitle(chooseServiceViewController.globalPer.detskieUslygi[4], for: .normal)
        btn6.setTitle(chooseServiceViewController.globalPer.detskieUslygi[5], for: .normal)
        btn7.setTitle(chooseServiceViewController.globalPer.detskieUslygi[6], for: .normal)
        btn8.setTitle(chooseServiceViewController.globalPer.detskieUslygi[7], for: .normal)
        btn9.setTitle(chooseServiceViewController.globalPer.detskieUslygi[8], for: .normal)
        btn10.setTitle(chooseServiceViewController.globalPer.detskieUslygi[9], for: .normal)
        btn11.setTitle(chooseServiceViewController.globalPer.detskieUslygi[10], for: .normal)
        btn12.setTitle(chooseServiceViewController.globalPer.detskieUslygi[11], for: .normal)
        btn13.setTitle(chooseServiceViewController.globalPer.detskieUslygi[12], for: .normal)
        btn14.setTitle(chooseServiceViewController.globalPer.detskieUslygi[13], for: .normal)
        
        lbl1.text = String(chooseServiceViewController.globalPer.detskieUslygiPrice[0])
        lbl2.text = String(chooseServiceViewController.globalPer.detskieUslygiPrice[1])
        lbl3.text = String(chooseServiceViewController.globalPer.detskieUslygiPrice[2])
        lbl4.text = String(chooseServiceViewController.globalPer.detskieUslygiPrice[3])
        lbl5.text = String(chooseServiceViewController.globalPer.detskieUslygiPrice[4])
        lbl6.text = String(chooseServiceViewController.globalPer.detskieUslygiPrice[5])
        lbl7.text = String(chooseServiceViewController.globalPer.detskieUslygiPrice[6])
        lbl8.text = String(chooseServiceViewController.globalPer.detskieUslygiPrice[7])
        lbl9.text = String(chooseServiceViewController.globalPer.detskieUslygiPrice[8])
        lbl10.text = String(chooseServiceViewController.globalPer.detskieUslygiPrice[9])
        lbl11.text = String(chooseServiceViewController.globalPer.detskieUslygiPrice[10])
        lbl12.text = String(chooseServiceViewController.globalPer.detskieUslygiPrice[11])
        lbl13.text = String(chooseServiceViewController.globalPer.detskieUslygiPrice[12])
        lbl14.text = String(chooseServiceViewController.globalPer.detskieUslygiPrice[13])
        
    }
    func zhenskieUslygi()
    {
        btn1.setTitle(chooseServiceViewController.globalPer.zhenskieUslygi[0], for: .normal)
        btn2.setTitle(chooseServiceViewController.globalPer.zhenskieUslygi[1], for: .normal)
        btn3.setTitle(chooseServiceViewController.globalPer.zhenskieUslygi[2], for: .normal)
        btn4.setTitle(chooseServiceViewController.globalPer.zhenskieUslygi[3], for: .normal)
        btn5.setTitle(chooseServiceViewController.globalPer.zhenskieUslygi[4], for: .normal)
        btn6.setTitle(chooseServiceViewController.globalPer.zhenskieUslygi[5], for: .normal)
        btn7.setTitle(chooseServiceViewController.globalPer.zhenskieUslygi[6], for: .normal)
        btn8.setTitle(chooseServiceViewController.globalPer.zhenskieUslygi[7], for: .normal)
        btn9.setTitle(chooseServiceViewController.globalPer.zhenskieUslygi[8], for: .normal)
        btn10.setTitle(chooseServiceViewController.globalPer.zhenskieUslygi[9], for: .normal)
        btn11.setTitle(chooseServiceViewController.globalPer.zhenskieUslygi[10], for: .normal)
        btn12.setTitle(chooseServiceViewController.globalPer.zhenskieUslygi[11], for: .normal)
        btn13.setTitle(chooseServiceViewController.globalPer.zhenskieUslygi[12], for: .normal)
        btn14.setTitle(chooseServiceViewController.globalPer.zhenskieUslygi[13], for: .normal)
        
        lbl1.text = String(chooseServiceViewController.globalPer.zhenskieUslygiPrice[0])
        lbl2.text = String(chooseServiceViewController.globalPer.zhenskieUslygiPrice[1])
        lbl3.text = String(chooseServiceViewController.globalPer.zhenskieUslygiPrice[2])
        lbl4.text = String(chooseServiceViewController.globalPer.zhenskieUslygiPrice[3])
        lbl5.text = String(chooseServiceViewController.globalPer.zhenskieUslygiPrice[4])
        lbl6.text = String(chooseServiceViewController.globalPer.zhenskieUslygiPrice[5])
        lbl7.text = String(chooseServiceViewController.globalPer.zhenskieUslygiPrice[6])
        lbl8.text = String(chooseServiceViewController.globalPer.zhenskieUslygiPrice[7])
        lbl9.text = String(chooseServiceViewController.globalPer.zhenskieUslygiPrice[8])
        lbl10.text = String(chooseServiceViewController.globalPer.zhenskieUslygiPrice[9])
        lbl11.text = String(chooseServiceViewController.globalPer.zhenskieUslygiPrice[10])
        lbl12.text = String(chooseServiceViewController.globalPer.zhenskieUslygiPrice[11])
        lbl13.text = String(chooseServiceViewController.globalPer.zhenskieUslygiPrice[12])
        lbl14.text = String(chooseServiceViewController.globalPer.zhenskieUslygiPrice[13])
    }
    
    
    func nogti()
    {
        btn1.setTitle(chooseServiceViewController.globalPer.nogti[0], for: .normal)
        btn2.setTitle(chooseServiceViewController.globalPer.nogti[1], for: .normal)
        btn3.setTitle(chooseServiceViewController.globalPer.nogti[2], for: .normal)
        btn4.setTitle(chooseServiceViewController.globalPer.nogti[3], for: .normal)
        btn5.setTitle(chooseServiceViewController.globalPer.nogti[4], for: .normal)
        btn6.setTitle(chooseServiceViewController.globalPer.nogti[5], for: .normal)
        btn7.setTitle(chooseServiceViewController.globalPer.nogti[6], for: .normal)
        btn8.setTitle(chooseServiceViewController.globalPer.nogti[7], for: .normal)
        btn9.setTitle(chooseServiceViewController.globalPer.nogti[8], for: .normal)
        btn10.setTitle(chooseServiceViewController.globalPer.nogti[9], for: .normal)
        btn11.setTitle(chooseServiceViewController.globalPer.nogti[10], for: .normal)
        btn12.isHidden = true
        btn13.isHidden = true
        btn14.isHidden = true
        
        lbl1.text = String(chooseServiceViewController.globalPer.nogtiPrice[0])
        lbl2.text = String(chooseServiceViewController.globalPer.nogtiPrice[1])
        lbl3.text = String(chooseServiceViewController.globalPer.nogtiPrice[2])
        lbl4.text = String(chooseServiceViewController.globalPer.nogtiPrice[3])
        lbl5.text = String(chooseServiceViewController.globalPer.nogtiPrice[4])
        lbl6.text = String(chooseServiceViewController.globalPer.nogtiPrice[5])
        lbl7.text = String(chooseServiceViewController.globalPer.nogtiPrice[6])
        lbl8.text = String(chooseServiceViewController.globalPer.nogtiPrice[7])
        lbl9.text = String(chooseServiceViewController.globalPer.nogtiPrice[8])
        lbl10.text = String(chooseServiceViewController.globalPer.nogtiPrice[9])
        lbl11.text = String(chooseServiceViewController.globalPer.nogtiPrice[10])
        lbl12.isHidden = true
        lbl13.isHidden = true
        lbl14.isHidden = true
    }

    func sizeView()
    {
        //scrolSize.frame = CGRectMake(0, 0, 414, [Int(chooseServiceViewController.globalPer.nogti.count) * 200]);
    }
}
