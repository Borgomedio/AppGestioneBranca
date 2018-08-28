//
//  TableViewControllerBambini.swift
//  Gestione Branca
//
//  Created by Andrea on 28/08/18.
//  Copyright © 2018 Andrea. All rights reserved.
//

import UIKit

var nomi = ["Andrea", "Matteo", "Marco", "Giovanni"]
var cognomi = ["Borgotti", "Rossi", "Luppi", "OLLI"]
var eta = [10, 9, 8, 10]
//var dateDiNascita : Data  // Sistemare array date di nascita
var myIndex = 0

class TableViewControllerBambini: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if nomeDaAggiungere != "-" && cognomeDaAggiungere != "-" {
            nomi.append(nomeDaAggiungere)
            cognomi.append(cognomeDaAggiungere)
            eta.append(calcolaEta(da: dataDaAggiungere))
            
            
            nomeDaAggiungere = "-"
            cognomeDaAggiungere = "-"
        }
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


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return nomi.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = nomi[indexPath.row] + " " + cognomi[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex = indexPath.row
        print("MODIFICATO MYINDEX IN: ")
        print(myIndex)
        performSegue(withIdentifier: "seguee", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

}
