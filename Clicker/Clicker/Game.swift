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
    
    @IBOutlet var timerLabel: UILabel!
    private var counter: Int = 0
    var timer: Timer?
    var isTimerStarted: Bool = false
    var timerCounter = 30
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCounter()
        startTimer()
    }
    
    @IBAction func tapGreenButton(_ sender: UIButton) {
        playGame()
        updateCounter()
        startTimer()
    }
    
    @IBAction func tapRedButton(_ sender: UIButton) {
        playGame()
        updateCounter()
        startTimer()
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
        guard segue.identifier == "goToGameOver" else { return }
        guard let destVC = segue.destination as? GameOver else { return }
        destVC.valueScoreGame = scoreValue.text
    }
    
    
    @objc func timerTickHandler() {
        if isTimerStarted == true, timerCounter > 1 {
            timerCounter -= 1
            updateCounterTimerLabel()
        } else {
           stopTimer()
         self.performSegue(withIdentifier: "goToGameOver", sender: self)
        }
    }
    
    func startTimer() {
        guard !isTimerStarted else { return }
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerTickHandler), userInfo: nil, repeats: true)
        updateCounterTimerLabel()
        isTimerStarted = true
    }
    
    func updateCounterTimerLabel() {
        timerLabel.text = "\(timerCounter)"
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
        timerCounter = 0
        isTimerStarted = false
    }

}
