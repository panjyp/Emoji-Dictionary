//
//  definitionViewController.swift
//  Emoji Dictionary
//
//  Created by Jeff Pan on 10/9/16.
//  Copyright © 2016 Jeff Pan. All rights reserved.
//

import UIKit

class definitionViewController: UIViewController {

    var emoji = "No emoji"
    
    @IBOutlet weak var labelEmoji: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelEmoji.text = emoji
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
