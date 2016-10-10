//
//  definitionViewController.swift
//  Emoji Dictionary
//
//  Created by Jeff Pan on 10/9/16.
//  Copyright © 2016 Jeff Pan. All rights reserved.
//

import UIKit

class definitionViewController: UIViewController {

    var emoji = Emoji()
    
    @IBOutlet weak var labelEmoji: UILabel!
    
    @IBOutlet weak var defLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var birthLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelEmoji.text = emoji.stringEmoji
        
        defLabel.text = emoji.definition
        categoryLabel.text = "Category: \(emoji.category)"
        birthLabel.text = "Birth Year: \(emoji.birthYear)"
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
