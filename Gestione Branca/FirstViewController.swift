//
//  FirstViewController.swift
//  Gestione Branca
//
//  Created by Andrea on 30/04/18.
//  Copyright © 2018 Andrea. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var LabelNumeroLupi: UILabel!
    @IBOutlet weak var LabelNumCDA: UILabel!
    @IBOutlet weak var labelNumNoCDA: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LabelNumeroLupi.text = String(eta.count)
        
        var t = 0
        
        for i in eta{
                if i == 10
                {
                        t=t+1
                }
        }
        LabelNumCDA.text = String(t)
        
       t = eta.count-t
        
        labelNumNoCDA.text = String(t)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

