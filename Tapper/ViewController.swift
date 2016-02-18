//
//  ViewController.swift
//  Tapper
//
//  Created by Stuart Hoffman on 2/17/16.
//  Copyright © 2016 Stuart Hoffman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet var coinButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var  tapsLabel: UILabel!
    
    @IBAction func onPlayButtonPressed(sender: UIButton!)
    {
        logoImage.hidden = true
        playButton.hidden = true
        howManyTapsTxt.hidden = true
        
        //tapButton.hidden = false
        tapsLabel.hidden = false
        coinButton.hidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

