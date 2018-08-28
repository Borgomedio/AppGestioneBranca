//
//  ViewController.swift
//  Gestione Branca
//
//  Created by Andrea on 30/04/18.
//  Copyright © 2018 Andrea. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
  
    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var labelCognome: UILabel!
    @IBOutlet weak var labelEta: UILabel!
    @IBOutlet weak var fotoProfilo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelEta.text = String(eta[myIndex])
        labelNome.text = nomi[myIndex]
        labelCognome.text = cognomi[myIndex]
    }
    @IBAction func importPhotoProfile(_ sender: Any) {
        
        let image = UIImagePickerController()
        image.delegate = self
        
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        image.allowsEditing = false
        
        self.present(image, animated: true)
        {
            //after is it complete
        }
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage{
            fotoProfilo.image = image
        }else{
            //error
        }
        
        self.dismiss(animated: true, completion: nil)
    }
}
