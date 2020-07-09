//
//  ViewController.swift
//  TicTacToe
//
//  Created by Hunter McNeil on 7/8/20.
//  Copyright © 2020 Hunter McNeil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBoutlets
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - IBActions
    @IBAction func ticTacToeButtonTapped(_ sender: UIButton) {
        TictactoeController.shared.checkingTheWinner(label: winnerLabel, button: sender)
    }
    
    @IBAction func playAgainButtonTapped(_ sender: Any) {
        TictactoeController.shared.resetingGamerBoard(view: self.view)
    }
    
}

