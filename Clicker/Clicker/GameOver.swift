//
//  GameOver.swift
//  Clicker
//
//  Created by M1 on 23.06.2022.
//

import UIKit

class GameOver: UIViewController {
    
    @IBOutlet var scoreGameOver: UILabel!
    
    var valueScoreGame: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let value = valueScoreGame {
            scoreGameOver.text = value
        } else {
            scoreGameOver.text = "Go next game"
        }
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
