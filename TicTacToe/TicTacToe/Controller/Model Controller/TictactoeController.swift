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

    func checkingActivePlayer() -> UIImage {
        if tictactoe.activePlayer == 1 {
            if let image = UIImage(named: "tictactoeO") { return image }
            tictactoe.activePlayer = 2
        } else {
            if let image = UIImage(named: "tictactoeX") { return image }
            tictactoe.activePlayer = 1
        }
        return UIImage()
    }
    
    //MARK: - Checking winner
    func checkingTheWinner() {
        
        for winnerCombination in tictactoe.winningCombination {
            
            if tictactoe.gameState[winnerCombination[0]] != 0 &&
                tictactoe.gameState[winnerCombination[0]] == tictactoe.gameState[winnerCombination[1]] &&
                tictactoe.gameState[winnerCombination[1]] == tictactoe.gameState[winnerCombination[2]] {
                tictactoe.gameIsActive = false
                
                if tictactoe.gameState[winnerCombination[0]] == 1 {
                    tictactoe.winner = "Cross has won"
                } else { tictactoe.winner = "Circle has won"}
                
                if tictactoe.gameIsActive == true {
                    for i in tictactoe.gameState { tictactoe.count = 1*tictactoe.count }
                    if tictactoe.count != 0 { tictactoe.winner = "Circle has won" }
                }
            }
        }
    }
    
    //MARK: - Reseting GamerBoard
    func resetingGamerBoard(view: UIView) {
        tictactoe.gameState = [0,0,0,0,0,0,0,0,0]
        tictactoe.gameIsActive = true
        tictactoe.activePlayer = 1
        
        for i  in 1...9 {
            let button  = view.viewWithTag(i) as? UIButton
            button?.setImage(nil, for: UIControl.State())
        }
    }
    
}
