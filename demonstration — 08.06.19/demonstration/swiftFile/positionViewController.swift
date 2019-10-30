//
//  positionViewController.swift
//  demonstration
//
//  Created by Умид Халилов on 05/05/2019.
//  Copyright © 2019 Умид Халилов. All rights reserved.
//

import UIKit
import MapKit // библиотека для работы карты

class positionViewController: UIViewController {

    @IBOutlet weak var adressLbl: UILabel!
    @IBOutlet weak var mpLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    
   

    
    var geocoder: CLGeocoder!
    var pin = AddressViewController.global.PinOnMap
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(pin)
        geocoder = CLGeocoder()
        adressLbl.text = AddressViewController.global.PinOnMap
        mpLbl.text = AddressViewController.global.mp
        
        geocoder.geocodeAddressString(pin) { (placemarks, error) ->
            Void in
            if error != nil
            {
                print("mapKit error")
            }
            if placemarks != nil
            {
                if let placemark = placemarks?.first
                {
                    let annotation = MKPointAnnotation()
                    annotation.title = "Ваш салон красоты"
                    annotation.subtitle = self.pin
                    annotation.coordinate = placemark.location!.coordinate
                    
                    self.mapView.showAnnotations([annotation], animated: true)
                    self.mapView.selectAnnotation(annotation, animated: true)
                }
            }
        }
    }
    
    @IBAction func backBtn(_ sender: Any)
    {
        performSegue(withIdentifier: "segueMenu", sender: self)
    }
    @IBAction func goBtn(_ sender: Any)
    {
       
       // performSegue(withIdentifier: "segueChooseService", sender: self)
        
    }
    

}
