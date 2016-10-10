//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Jeff Pan on 10/8/16.
//  Copyright © 2016 Jeff Pan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row].stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at:indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "defSegue", sender: emoji)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let defVC = segue.destination as! definitionViewController
        
        defVC.emoji = sender as! Emoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        
        emoji1.stringEmoji = "😱"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face showing horror"
        
        let emoji2 = Emoji()
        
        emoji2.stringEmoji = "🤓"
        emoji2.birthYear = 2011
        emoji2.category = "Smiley"
        emoji2.definition = "A nerd smiley face"

        let emoji3 = Emoji()
        
        emoji3.stringEmoji = "😡"
        emoji3.birthYear = 2000
        emoji3.category = "Smiley"
        emoji3.definition = "A hot smiley face"

        let emoji4 = Emoji()
        
        emoji4.stringEmoji = "🌭"
        emoji4.birthYear = 2000
        emoji4.category = "Food"
        emoji4.definition = "A hot dog"
        let emoji5 = Emoji()
        
        emoji5.stringEmoji = "👻"
        emoji5.birthYear = 2016
        emoji5.category = "Smiley"
        emoji5.definition = "A ghost smiley face"
        let emoji6 = Emoji()
        
        emoji6.stringEmoji = "😇"
        emoji6.birthYear = 2013
        emoji6.category = "Smiley"
        emoji6.definition = "An angel smiley face"
        let emoji7 = Emoji()
        
        emoji7.stringEmoji = "😎"
        emoji7.birthYear = 1990
        emoji7.category = "Smiley"
        emoji7.definition = "A smiley face with shades"
        
        return [emoji1,emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
    }

}

