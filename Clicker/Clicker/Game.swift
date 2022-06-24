//
//  Game.swift
//  Clicker
//
//  Created by M1 on 23.06.2022.
//

import UIKit

class Game: UIViewController {

    @IBOutlet var scoreValue: UILabel!
    @IBOutlet private var greenButton: UIButton!
    @IBOutlet private var redButton: UIButton!
    @IBOutlet private var blueButton: UIButton!
    
    private var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCounter()
    }
    
    @IBAction func tapGreenButton(_ sender: UIButton) {
        playGame()
        updateCounter()
    }
    
    @IBAction func tapRedButton(_ sender: UIButton) {
        playGame()
        updateCounter()
    }
    
    @IBAction func tapBlueButton(_ sender: UIButton) {
        playGame()
        updateCounter()
    }
    
    func playGame() {
        counter += 1
        let bottonArray = [redButton,greenButton,blueButton]
        greenButton.isHidden = true
        redButton.isHidden = true
        blueButton.isHidden = true
        let randomButton: UIButton = (bottonArray.randomElement() ?? greenButton!)!
        randomButton.isHidden = false
    }
    
    func updateCounter() {
        scoreValue.text = "\(counter)"
    }
    

    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "sgGameOver" else { return }
        guard let destVC = segue.destination as? GameOver else { return }
        destVC.valueScoreGame = scoreValue.text

    }

}
