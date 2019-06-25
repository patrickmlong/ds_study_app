//
//  definitionViewControler.swift
//  Data Science Study App
//
//  Created by patrick long on 6/24/19.
//  Copyright © 2019 patrick long. All rights reserved.
//

import UIKit

class definitionViewControler: UIViewController {
    
    @IBOutlet weak var conceptLabel: UILabel!
    @IBOutlet weak var conceptDefinition: UILabel!
    var conceptTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      conceptLabel.text = conceptTitle
        
        if conceptTitle == "Statistics Primer" {
            conceptDefinition.text = "yes" }
        else {
            conceptDefinition.text = "nearly"
        }

    }
    

    
}
