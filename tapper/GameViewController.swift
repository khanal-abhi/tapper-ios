//
//  GameViewController.swift
//  tapper
//
//  Created by Abhinash Khanal on 5/22/16.
//  Copyright © 2016 KHANALCO. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var tapsCounter: UILabel!
    @IBOutlet weak var tapButton: UIButton!
    
    
    var passedInt: Int!
    var taps: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func tapped(sender: AnyObject) {
        
        if(passedInt == nil){
            passedInt = 10
        }
        if(taps == nil){
            taps = 0;
        }
        taps = taps + 1
        tapsCounter.text = "Number of Taps: \(taps!)"
        
        if(taps == passedInt!){
            self.performSegueWithIdentifier("from_game_to_main", sender: self)
        }
        
        
        
    }
    
    
}
