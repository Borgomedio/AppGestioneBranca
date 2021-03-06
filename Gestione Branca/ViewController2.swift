//
//  ViewController2.swift
//  Gestione Branca
//
//  Created by Andrea on 01/05/18.
//  Copyright © 2018 Andrea. All rights reserved.
//

import UIKit
//var nomi = ["Andrea", "Matteo", "Marco", "Giovanni"]
//var cognomi = ["Borgotti", "Rossi", "Luppi", "OLLI"]
//var eta = [10, 9, 8, 10]
//var dateDiNascita : Data  // Sistemare array date di nascita
//var myIndex = 0

class ViewController2: UIViewController{
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad()
    {
        if nomeDaAggiungere != "-" && cognomeDaAggiungere != "-" {
            nomi.append(nomeDaAggiungere)
            cognomi.append(cognomeDaAggiungere)
            eta.append(calcolaEta(da: dataDaAggiungere))
           
            
            nomeDaAggiungere = "-"
            cognomeDaAggiungere = "-"
        }
        super.viewDidLoad()
        
        table.reloadData()
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
        cell.textLabel?.text = nomi[indexPath.row] + " " + cognomi[indexPath.row]
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        table.reloadData()
        myIndex = indexPath.row
        print("MODIFICATO MYINDEX IN: ")
        print(myIndex)
        performSegue(withIdentifier: "seguee", sender: self)
    }
   
}
