//
//  ViewController2.swift
//  Gestione Branca
//
//  Created by Andrea on 01/05/18.
//  Copyright © 2018 Andrea. All rights reserved.
//

import UIKit
var nomi = ["Andrea", "Matteo", "Marco", "Giovanni"]
var cognomi = ["Borgotti", "Rossi", "Luppi", "OLLI"]
var eta = [10, 9, 8, 10]
var myIndex = 0

class ViewController2: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    override func viewDidLoad()
    {
        if nomeDaAggiungere != "a" && cognomeDaAggiungere != "a" {
            nomi.append(nomeDaAggiungere)
            cognomi.append(cognomeDaAggiungere)
            
            print("L'eta calcolata viene: " )
            print(calcolaEta(da: dataDaAggiungere))
            
            nomeDaAggiungere = "a"
            cognomeDaAggiungere = "a"
        }
        super.viewDidLoad()
    }

    public func calcolaEta(da: Date) -> Int {
        let t = Date()
        let calendar = Calendar.current
        var e = 0
        
        let yearB = calendar.component(.year, from: da)
        let monthB = calendar.component(.month, from: da)
        let dayB = calendar.component(.day, from: da)
        
        let y = calendar.component(.year, from: t)
        let m = calendar.component(.month, from: t)
        let d = calendar.component(.day, from: t)
        
        
        // Sistemare calcolo dell'età usando mesi e giorni
        e = y - yearB
        
        if monthB > m {
            e -= 1
        }else if monthB == m {
            if dayB > d {
                e -= 1
            }
        }
        

        return e
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return nomi.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = nomi[indexPath.row]
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
   
}
