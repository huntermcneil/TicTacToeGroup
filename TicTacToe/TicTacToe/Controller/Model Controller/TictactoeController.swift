//
//  TictactoeController.swift
//  TicTacToe
//
//  Created by Victor Monteiro on 7/8/20.
//  Copyright © 2020 Hunter McNeil. All rights reserved.
//

import UIKit

class TictactoeController {
    
    //MARK: - shared instance
    static let shared = TictactoeController()
    
    //MARK: - S.O.T
    var tictactoe = TicTacToe()
    
    
    //MARK: - Checking winner
    func checkingTheWinner(label: UILabel, button: UIButton) {
        
        if (tictactoe.gameState[button.tag-1] == 0 && tictactoe.gameIsActive == true) {
            
            tictactoe.gameState[button.tag-1] = tictactoe.activePlayer
            if tictactoe.activePlayer == 1 {
                button.setImage(UIImage(named: tictactoe.imageX), for: .normal)
                tictactoe.activePlayer = 2
            } else {
                button.setImage(UIImage(named: tictactoe.imageO), for: .normal)
                tictactoe.activePlayer = 1
            }
        }
        
        for winnerCombination in tictactoe.winningCombination {
            
            if  tictactoe.gameState[winnerCombination[0]] != 0 &&
                tictactoe.gameState[winnerCombination[0]] == tictactoe.gameState[winnerCombination[1]] &&
                tictactoe.gameState[winnerCombination[1]] == tictactoe.gameState[winnerCombination[2]] {
                tictactoe.gameIsActive = false
                
                if tictactoe.gameState[winnerCombination[0]] == 1 { label.text = "Cross has won!"
                } else if tictactoe.gameState[winnerCombination[0]] == 2 {
                    label.text = "Circle has won!"
                } else {
                    label.text = "You Tied"
                }
                
                if tictactoe.gameIsActive == true {
                    for i in tictactoe.gameState { tictactoe.count = i*tictactoe.count }
                    if tictactoe.count != 0 {
                        tictactoe.winner = "It was a draw!"
                        label.text = "\(tictactoe.winner)"
                        button.isHidden = false
                    }
                }
                button.isHidden = false
                label.isHidden = false
            }
        }
    }
    
    //MARK: - Reseting GamerBoard
    func resetingGamerBoard(view: UIView) {
        tictactoe.gameState = [0,0,0,0,0,0,0,0,0]
        tictactoe.gameIsActive = true
        tictactoe.activePlayer = 1
        
        for i in 1...9 {
            let button  = view.viewWithTag(i) as? UIButton
            button?.setImage(nil, for: UIControl.State())
        }
    }
    
}
