//
//  ViewControllerNuovoBambino.swift
//  Gestione Branca
//
//  Created by Andrea on 01/05/18.
//  Copyright © 2018 Andrea. All rights reserved.
//

import UIKit

var nomeDaAggiungere = "a"
var cognomeDaAggiungere = "a"
var dataDiNascita = NSDateComponents()

var classeInsert = "Terza"


class ViewControllerNuovoBambino: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {

    let classe = ["Terza", "Quarta", "Quinta"]
    
    @IBOutlet weak var textNome: UITextField!
    @IBOutlet weak var textCognome: UITextField!
    @IBOutlet weak var dataInserita: UIDatePicker!
    @IBOutlet weak var classeInserita: UIPickerView!
    
    override func viewDidLoad() {
        
        classeInserita.delegate = self
        classeInserita.dataSource = self
        
        super.viewDidLoad()

    }

    @IBAction func aggiungiButton(_ sender: Any)
    {
        if nomeDaAggiungere != "a" && cognomeDaAggiungere != "a"{
            nomeDaAggiungere = textNome.text!
            cognomeDaAggiungere = textCognome.text!
        
            performSegue(withIdentifier: "torna", sender: self)
            print("OooooooK")
        }
        
        print(classeInsert)
        print(dataDiNascita)
        print(cognomeDaAggiungere)
        print(nomeDaAggiungere)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return classe.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return classe[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        classeInsert = classe[row]
    }
}

