//
//  GameOverViewController.swift
//  WhackAFrog
//
//  Created by Tal Zemah on 20/08/2017.
//  Copyright © 2017 Tal Zemah. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    var score: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set background
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        
        scoreLabel.text = String.init(stringInterpolationSegment: score!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // actions - (buttons clicked)
    @IBAction func newGameClicked(_ sender: Any) {
        
        self.presentingViewController?.beginAppearanceTransition(false, animated: true)
        
        ///self.dismiss(animated: true, completion: nil)

        /// UIApplication.shared.keyWindow?.rootViewController = storyboard!.instantiateViewController(withIdentifier: "GameViewController")

        performSegue(withIdentifier: "gameOverToGameSegue", sender: self)
    }
    
    @IBAction func exitClicked(_ sender: Any) {
        exit(0)
    }
}
