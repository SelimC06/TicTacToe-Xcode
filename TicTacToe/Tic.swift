//
//  Tic.swift
//  TicTacToe
//
//  Created by Coskunuzer, Selim on 9/22/22.
//

import Foundation
import UIKit
class Tic{
    var index : Int = 0
    var round : Int
    var win : Bool = false
    var Xor0 : Int = 2
    var toe : [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    var tac : [Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    init(round : Int){
        self.round = round
    }
    
    func Pressed() {
        for s in 0...toe.count-1{
            if (toe[s] == index){
                if (round % 2 == 0){tac[s] = 1}
                else {tac[s] = 2}
            }
        }
    }
    
    func update() -> String{
        if (round % 2 == 0){
            return "X"
        }
        else{
            return "O"
        }
    }
    
    func itterateRound() {
        round+=1
        print(round)
    }
    
    func CheckWin() {
        var count = 0
        // Row1-Col1 = X
        for i in stride(from: 0, to: 3, by: 1){
            if (!win){
                count = 0
                for c in stride(from: i, to: toe.count, by: 3){
                    if (tac[c] == 1){
                        count+=1
                    }
                }
                if count == 3{
                    win = true
                    Xor0 = 1
                    break
                }
            }
        }
        
        // Row1-Col1 = 0
        for i in stride(from: 0, to: 3, by: 1){
            if (!win){
                count = 0
                for c in stride(from: i, to: toe.count, by: 3){
                    if (tac[c] == 2){
                        count+=1
                    }
                }
                if count == 3{
                    win = true
                    Xor0 = 0
                    break
                }
            }
        }
        
        
        
        
        
        // Row1-Col123 = X
        for i in stride(from: 0, to: toe.count, by: 3){
            if (!win){
                count = 0
                for c in stride(from: i, to: i+3, by: 1){
                    if (tac[c] == 1){
                        count+=1
                    }
                }
                if count == 3{
                    win = true
                    Xor0 = 1
                    break
                }
            }
        }
        // Row1-Col123 = 0
        for i in stride(from: 0, to: toe.count, by: 3){
            if (!win){
                count = 0
                for c in stride(from: i, to: i+3, by: 1){
                    if (tac[c] == 2){
                        count+=1
                    }
                }
                if count == 3{
                    win = true
                    Xor0 = 0
                    break
                }
            }
        }
        
        
        
        
        
        // Diagonal = X
        if (!win){
            count = 0
            for c in stride(from: 0, to: toe.count, by: 4){
                if (tac[c] == 1){
                    count+=1
                }
            }
            if count == 3{
                win = true
                Xor0 = 1
            }
        }
        
        if (!win){
            count = 0
            for c in stride(from: 2, to: toe.count-2, by: 2){
                if (tac[c] == 1){
                    count+=1
                }
            }
            if count == 3{
                win = true
                Xor0 = 1
            }
        }
        // Diagonal = 0
        if (!win){
            count = 0
            for c in stride(from: 0, to: toe.count, by: 4){
                if (tac[c] == 2){
                    count+=1
                }
            }
            if count == 3{
                win = true
                Xor0 = 0
            }
        }
        
        if (!win){
            count = 0
            for c in stride(from: 2, to: toe.count-2, by: 2){
                if (tac[c] == 2){
                    count+=1
                }
            }
            if count == 3{
                win = true
                Xor0 = 0
            }
        }
    }
    
    func postWin() ->String{
        if (win){
            if (Xor0 == 0){
                return "Congratulations Player 0"
            }
            else if (Xor0 == 1){
                return "Congratulations Player X"
            }
        }
        if (round == 9 && Xor0 == 2){
            return "Draw, Restart?"
        }
        return ""
    }
}
