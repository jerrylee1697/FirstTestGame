//
//  ViewController.swift
//  TestGame
//
//  Created by Jerry Lee on 6/3/17.
//  Copyright © 2017 JerryLee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    
    
    let cardNames = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        //print("deal tapped")
        
        // Randomizes left number from 0 to 13
        let leftNumber:Int = Int(arc4random_uniform(13))
        // "let" is constant because number doesn't change after assignment
        // arc4random_uniform() returns a UINT32, unsigned integer
        // Int(~) converts to type int, expected for array access
        
        // Sets left image
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        
        // Randomizes right number from 0 to 13
        let rightNumber:Int = Int(arc4random_uniform(13))
        
        //Sets right image
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        if leftNumber > rightNumber {
            // Left card wins
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber == rightNumber {
            // Tie
        }
        else {
            // Right card wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        
        
    }

}

