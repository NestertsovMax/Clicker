//
//  Menu.swift
//  Clicker
//
//  Created by M1 on 23.06.2022.
//

import UIKit

class Menu: UIViewController {

    @IBOutlet var lastScoreValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lastScoreValue.text = "0"
    }
    
    @IBAction func backToMenu(_ segue: UIStoryboardSegue) {
        guard let gameVC = segue.source as? GameOver else { return }
        lastScoreValue.text = gameVC.valueScoreGame
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
