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
    var definition = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
      conceptLabel.text = definition

    }
    

    
}
