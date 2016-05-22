//
//  ViewController.swift
//  tapper
//
//  Created by Abhinash Khanal on 5/21/16.
//  Copyright © 2016 KHANALCO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "from_main_to_game"){
            let gameViewController = segue.destinationViewController as! GameViewController
            if(true){
                gameViewController.passedInt = 2;
            }
        }
    }
    
    func goToGame(){
        self.performSegueWithIdentifier("from_main_to_game", sender: self)
    }


}

