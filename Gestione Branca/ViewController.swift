//
//  ViewController.swift
//  Gestione Branca
//
//  Created by Andrea on 30/04/18.
//  Copyright © 2018 Andrea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var labelCognome: UILabel!
    @IBOutlet weak var labelEta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelEta.text = String(eta[myIndex])
        labelNome.text = nomi[myIndex]
        labelCognome.text = cognomi[myIndex]
    }
}
