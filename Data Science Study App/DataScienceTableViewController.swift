//
//  DataScienceTableViewController.swift
//  Data Science Study App
//
//  Created by patrick long on 6/24/19.
//  Copyright © 2019 patrick long. All rights reserved.
//

import UIKit

class DataScienceTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    var concept: [String] = ["Supervised Learning", "Unsupervised Learning"]

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return concept.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ourSegue", sender: nil)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel?.text = concept[indexPath.row]
        
        
        return cell
    }

}
