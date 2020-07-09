//
//  ViewController.swift
//  TicTacToe
//
//  Created by Hunter McNeil on 7/8/20.
//  Copyright © 2020 Hunter McNeil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func ticTacToeButtonTapped(_ sender: UIButton) {
        var shared = TictactoeController.shared.tictactoe
        if (shared.gameState[sender.tag-1] == 0 && shared.gameIsActive == true) {
            shared.gameState[sender.tag-1] = shared.activePlayer
            if (shared.activePlayer == 1) {
                sender.setImage(UIImage(named: "tictactoeX"), for: UIControl.State())
                shared.activePlayer = 2
            } else {
                sender.setImage(UIImage(named: "tictactoeO"), for: UIControl.State())
                shared.activePlayer = 1
            }
        }
//        sender.setImage(TictactoeController.shared.checkingActivePlayer(), for: .normal)
        TictactoeController.shared.checkingTheWinner(label: winnerLabel, button: playAgainButton)
        winnerLabel.text = TictactoeController.shared.tictactoe.winner
    }

    @IBAction func playAgainButtonTapped(_ sender: Any) {
        TictactoeController.shared.resetingGamerBoard(view: self.view)
    }
    
}

