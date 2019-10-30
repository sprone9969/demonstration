//
//  addProfileViewController.swift
//  demonstration
//
//  Created by Умид Халилов on 02/06/2019.
//  Copyright © 2019 Умид Халилов. All rights reserved.
//

import UIKit

class addProfileViewController: UIViewController {

    @IBOutlet weak var imageOutl: UIImageView!
    @IBOutlet weak var nameTxtFld: UITextField!
    @IBOutlet weak var surnameTxtFld: UITextField!
    @IBOutlet weak var promoTxtFld: UITextField!
    @IBOutlet weak var addPicBtnOutl: UIButton!
    @IBOutlet weak var saveBtn: UIButton!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }

    
    
    @IBAction func saveBtn(_ sender: Any)
    {
        if nameTxtFld.text!.count > 0
        {
            if surnameTxtFld.text!.count > 0
            {
                StartUITabBarController.globalPer.proverka = true
                 performSegue(withIdentifier: "backSegue", sender: self)
            }
        }
        else
        {
            surnameTxtFld.placeholder = "Графа не заполнена"
            nameTxtFld.placeholder = "Графа не заполнена"
        }
       
       
    }
    
    @IBAction func addPicBtn(_ sender: Any)
    {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Take Photo", style: .default, handler: { _ in
            self.openCamera()
        }))
        
        alert.addAction(UIAlertAction(title: "Choose Photo", style: .default, handler: { _ in
            self.openGallary()
        }))
        
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .cancel, handler: nil))
        
        //If you want work actionsheet on ipad then you have to use popoverPresentationController to present the actionsheet, otherwise app will crash in iPad
        switch UIDevice.current.userInterfaceIdiom {
        case .pad:
            alert.popoverPresentationController?.sourceView = sender as! UIView
            alert.popoverPresentationController?.sourceRect = (sender as AnyObject).bounds
            alert.popoverPresentationController?.permittedArrowDirections = .up
        default:
            break
        }
        
        self.present(alert, animated: true, completion: nil)
    }
    
  
    @IBAction func hideKeyboardBtn(_ sender: Any)
    {
        view.endEditing(true)
    }
    

    
    ////тест начало
    //MARK: - Open the camera
    func openCamera(){
        if(UIImagePickerController .isSourceTypeAvailable(UIImagePickerController.SourceType.camera)){
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
            //If you dont want to edit the photo then you can set allowsEditing to false
            imagePicker.allowsEditing = true
            imagePicker.delegate = self
            self.present(imagePicker, animated: true, completion: nil)
        }
        else{
            let alert  = UIAlertController(title: "Warning", message: "You don't have camera", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    //MARK: - Choose image from camera roll
    
    func openGallary(){
        imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        //If you dont want to edit the photo then you can set allowsEditing to false
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
        self.present(imagePicker, animated: true, completion: nil)
    }
}

//MARK: - UIImagePickerControllerDelegate

extension addProfileViewController:  UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    private func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        /*
         Get the image from the info dictionary.
         If no need to edit the photo, use `UIImagePickerControllerOriginalImage`
         instead of `UIImagePickerControllerEditedImage`
         */
//        if let editedImage = info[UIImagePickerControllerEditedImage] as? UIImage{
//            self.imgProfile.image = editedImage
//        }
        
        //Dismiss the UIImagePicker after selection
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.isNavigationBarHidden = false
        self.dismiss(animated: true, completion: nil)
    }
    // тест конец
    

}
