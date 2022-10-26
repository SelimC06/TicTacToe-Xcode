//
//  ViewController.swift
//  TicTacToe
//
//  Created by Coskunuzer, Selim on 9/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UILabel!
    var indexw : Int = 0
    var n = Tic(round: 0)
    @IBOutlet var buttons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func Pressed0(sender: UIButton) {
        if (!n.win){
            n.index = sender.tag
            if (n.tac[n.index] == 0){
            n.Pressed()
            buttons[0].setTitle(n.update(), for: .normal)
            n.itterateRound()
            }
            n.CheckWin()
            text.text = n.postWin()
           
        }
    }
    
    @IBAction func Pressed1(sender: UIButton) {
        if (!n.win){
            n.index = sender.tag
            if (n.tac[n.index] == 0){
            n.Pressed()
            buttons[1].setTitle(n.update(), for: .normal)
            n.itterateRound()
            }
            n.CheckWin()
            text.text = n.postWin()
            
        }
    }
    
    @IBAction func Pressed2(sender: UIButton) {
        if (!n.win){
            n.index = sender.tag
            if (n.tac[n.index] == 0){
            n.Pressed()
            buttons[2].setTitle(n.update(), for: .normal)
            n.itterateRound()
            }
            n.CheckWin()
            text.text = n.postWin()
        }
    }
    
    @IBAction func Pressed3(sender: UIButton) {
        if (!n.win){
            n.index = sender.tag
            if (n.tac[n.index] == 0){
            n.Pressed()
            buttons[3].setTitle(n.update(), for: .normal)
            n.itterateRound()
            }
            n.CheckWin()
            text.text = n.postWin()
        }
    }
    
    @IBAction func Pressed4(sender: UIButton) {
        if (!n.win){
            n.index = sender.tag
            if (n.tac[n.index] == 0){
            n.Pressed()
            buttons[4].setTitle(n.update(), for: .normal)
            n.itterateRound()
            }
            n.CheckWin()
            text.text = n.postWin()
        }
    }
    
    @IBAction func Pressed5(sender: UIButton) {
        if (!n.win){
            n.index = sender.tag
            if (n.tac[n.index] == 0){
            n.Pressed()
            buttons[5].setTitle(n.update(), for: .normal)

            n.itterateRound()
            }
            n.CheckWin()
            text.text = n.postWin()
        }
    }
    
    @IBAction func Pressed6(sender: UIButton) {
        if (!n.win){
            n.index = sender.tag
            if (n.tac[n.index] == 0){
            n.Pressed()
            buttons[6].setTitle(n.update(), for: .normal)
            buttons[6].titleLabel?.font = .systemFont(ofSize: 40)
            n.itterateRound()
            }
            n.CheckWin()
            text.text = n.postWin()
        }
    }
    
    @IBAction func Pressed7(sender: UIButton) {
        if (!n.win){
            n.index = sender.tag
            if (n.tac[n.index] == 0){
            n.Pressed()
            buttons[7].setTitle(n.update(), for: .normal)
            n.itterateRound()
            }
            n.CheckWin()
            text.text = n.postWin()
        }
    }
    
    @IBAction func Pressed8(sender: UIButton) {
        if (!n.win){
            n.index = sender.tag
            if (n.tac[n.index] == 0){
            n.Pressed()
            buttons[8].setTitle(n.update(), for: .normal)
            n.itterateRound()
            }
            n.CheckWin()
            text.text = n.postWin()
        }
    }
    
    @IBAction func PressedRestart(_ sender: Any) {
        n = Tic(round: 0)
        for i in stride(from: 0, to: buttons.count, by: 1){
            buttons[i].setTitle("", for: .normal)
        }
    }
}

