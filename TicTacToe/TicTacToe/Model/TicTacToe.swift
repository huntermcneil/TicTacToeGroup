//
//  TicTacToe.swift
//  TicTacToe
//
//  Created by adetokunbo babatunde on 7/8/20.
//  Copyright © 2020 Hunter McNeil. All rights reserved.
//

import Foundation

struct TicTacToe {
    var activePlayer = 1
    var count = 1
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var gameIsActive = true
    let winningCombination = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7,], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    var winner = ""
}
