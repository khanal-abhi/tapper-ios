//
//  ViewController.swift
//  tapper
//
//  Created by Abhinash Khanal on 5/21/16.
//  Copyright © 2016 KHANALCO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appsToWin: UITextField!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var tapsLabel: UILabel!
    
    var lastScore: Int!
    var lastTaps: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if(lastScore == nil){
            lastScore = 0
        }
        
        if(lastTaps == nil){
            lastTaps = 10
        }
        
        scoreLabel.text = "Last Score: \(lastScore)"
        tapsLabel.text = "Last Taps: \(lastTaps)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "from_main_to_game"){
            let gameViewController = segue.destinationViewController as! GameViewController
            if(appsToWin.text! != ""){
                gameViewController.passedInt = Int(appsToWin.text!)
            } 
        }
    }
    
    @IBAction func playGame(sender: AnyObject) {
        self.performSegueWithIdentifier("from_main_to_game", sender: self)
    }
}

