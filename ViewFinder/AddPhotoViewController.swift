//
//  AddPhotoViewController.swift
//  ViewFinder
//
//  Created by Apple on 6/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //    inherit code from Apple
    
    var imagePicker = UIImagePickerController()
    //    created object from UIImagePickerController that is going to store our photo variable

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self

        // Do any additional setup after loading the view.
    }
    
    internal func imagePickerController(_ _picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            newImage.image = selectedImage
        }
        imagePicker.dismiss(animated: true, completion: nil)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
