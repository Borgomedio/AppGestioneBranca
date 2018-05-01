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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

   public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return nomi.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = nomi[indexPath.row]
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
}
