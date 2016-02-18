//
//  ViewController.swift
//  Tapper
//
//  Created by Stuart Hoffman on 2/17/16.
//  Copyright © 2016 Stuart Hoffman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    //Outlets
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet var coinButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var  tapsLabel: UILabel!
    
    //Actions
    @IBAction func onPlayButtonPressed(sender: UIButton!)
    {
        if (howManyTapsTxt.text != nil && howManyTapsTxt.text != "")
        {
            logoImage.hidden = true
            playButton.hidden = true
            howManyTapsTxt.hidden = true
            
            tapsLabel.hidden = false
            coinButton.hidden = false

            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLabel()
        }
    }
    
    @IBAction func onCoinTapped(sender: UIButton!)
    {
        currentTaps++
        updateTapsLabel()
        
        if (isGameOver())
        {
            restartGame()
        }
    }
    
    func updateTapsLabel()
    {
        tapsLabel.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool{
        if (currentTaps >= maxTaps)
        {
            return true
        } else
        {
            return false
        }
    }
    
    func restartGame()
    {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImage.hidden = false
        playButton.hidden = false
        howManyTapsTxt.hidden = false
        
        tapsLabel.hidden = true
        coinButton.hidden = true

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

