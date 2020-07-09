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
        sender.setImage(TictactoeController.shared.checkingActivePlayer(), for: .normal)
        TictactoeController.shared.checkingTheWinner(label: winnerLabel, button: playAgainButton)
        winnerLabel.text = TictactoeController.shared.tictactoe.winner
    }

    @IBAction func playAgainButtonTapped(_ sender: Any) {
        TictactoeController.shared.resetingGamerBoard(view: self.view)
    }
    
}

