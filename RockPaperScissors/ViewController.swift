//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Thomas Povinelli on 1/16/15.
//  Copyright (c) 2015 GameDragon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var pLabel: UILabel!
    @IBOutlet var cLabel: UILabel!
    @IBOutlet var tLabel: UILabel!
    @IBOutlet var playerMoveLable: UILabel!
    @IBOutlet var cpuMoveLabel: UILabel!
    @IBOutlet var winner: UILabel!
    var ties: Int = 0
    var loses: Int = 0
    var wins: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped (var theButton: UIButton) {
        var passing = theButton.titleLabel?.text
        let validMoves = ["Rock", "Paper", "Scissors"]
        var randomMove = Int(arc4random_uniform(UInt32(validMoves.count)))
        var cpumove = validMoves[randomMove]
        if passing == "Rock" {
            if cpumove == "Rock" {
                ties = ties + 1
                tLabel.text = String(ties)
                winner.text = "tie!"
                
            }
            else if cpumove == "Paper" {
                loses = loses + 1
                cLabel.text = String(loses)
                winner.text = "CPU"
            }
            else if cpumove == "Scissors" {
                wins = wins + 1
                pLabel.text = String(wins)
                winner.text = "Player!"
            }
        }
        else if passing == "Paper" {
            if cpumove == "Paper" {
                ties = ties + 1
                tLabel.text = String(ties)
                winner.text = "tie!"
                
            }
            else if cpumove == "Scissors" {
                loses = loses + 1
                cLabel.text = String(loses)
                winner.text = "CPU"
                
            }
            else if cpumove == "Rock" {
                wins = wins + 1
                pLabel.text = String(wins)
                winner.text = "Player!"
                
            }
        }
        else if passing == "Scissors" {
            if cpumove == "Scissors" {
                ties = ties + 1
                tLabel.text = String(ties)
                winner.text = "tie!"
                
            }
            else if cpumove == "Rock" {
                loses = loses + 1
                cLabel.text = String(loses)
                winner.text = "CPU"
                
            }
            else if cpumove == "Paper" {
                wins = wins + 1
                pLabel.text = String(wins)
                winner.text = "Player!"
                
            }
        }
        playerMoveLable.text = passing
        cpuMoveLabel.text = cpumove
    }
    
        
}



