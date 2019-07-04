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
    
    var concepts: [String] = ["Statistics Primer",
                             "Data Preparation",
                             "Unsupervised Learning",
                             "Supervised Learning",
                             "Unsupervised Learning",
                             "Deep Learning",
                             "Model Validation",
                             "Languages ]

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return concepts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel?.text = concepts[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let concept = concepts[indexPath.row]
        
        performSegue(withIdentifier: "ourSegue", sender: concept)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! definitionViewControler
        defVC.conceptTitle = sender as! String
    }

}
