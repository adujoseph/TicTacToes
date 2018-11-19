//
//  ViewController.swift
//  TicTacToe
//
//  Created by MAC on 19/11/2018.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var ActivePlayer = 1
    var player1=[Int]()
    var player2=[Int]()
    
    
    @IBAction func button1(_ sender: Any) {
    }
    
    @IBAction func button2(_ sender: Any) {
    }
    
    @IBAction func button3(_ sender: Any) {
    }
    
    @IBAction func button4(_ sender: Any) {
    }
    
    @IBAction func button5(_ sender: Any) {
    }
    
    @IBAction func button6(_ sender: Any) {
    }
    
    @IBAction func button7(_ sender: Any) {
    }
    
    @IBAction func button8(_ sender: Any) {
    }
    
    @IBAction func button9(_ sender: Any) {
    }
    
    
    @IBAction func buttonSelectEvent(_ sender: Any) {
        let buttonSelect = sender as! UIButton
        print (buttonSelect.tag)
        playGame(buttonSelect: buttonSelect)
    }
    
    func playGame(buttonSelect:UIButton){
        
        if ActivePlayer==1{
            buttonSelect.setTitle("X", for: UIControl.State.normal)
            buttonSelect.backgroundColor = UIColor(red: 231/255, green: 190/255, blue: 166/255, alpha: 0.5)
            player1.append(buttonSelect.tag)
            print(player1)
            ActivePlayer=2
        }else {
            buttonSelect.setTitle("O", for: UIControl.State.normal)
              buttonSelect.backgroundColor = UIColor(red: 190/255, green: 96/255, blue: 231/255, alpha: 0.5)
            player2.append(buttonSelect.tag)
            print(player2)
            ActivePlayer=1
        }
        buttonSelect.isEnabled = false
        winner()
        
    }
    func winner(){
        var winner = -1
        
        //row1
        if player1.contains(1) && player1.contains(2) && player1.contains(3){
            winner = 1
        }
        if player2.contains(1) && player1.contains(2) && player1.contains(3){
            winner = 2
        }
        //row2
        if player1.contains(4) && player1.contains(5) && player1.contains(6){
            winner = 1
        }
        if player2.contains(4) && player1.contains(5) && player1.contains(6){
            winner = 2
        }
        //row3
        if player1.contains(7) && player1.contains(8) && player1.contains(9){
            winner = 1
        }
        if player2.contains(7) && player1.contains(8) && player1.contains(9){
            winner = 2
        }
        //col1
        if player1.contains(1) && player1.contains(4) && player1.contains(7){
            winner = 1
        }
        if player2.contains(1) && player1.contains(4) && player1.contains(7){
            winner = 2
        }
        //col2
        if player1.contains(2) && player1.contains(5) && player1.contains(8){
            winner = 1
        }
        if player2.contains(2) && player1.contains(5) && player1.contains(8){
            winner = 2
        }
        //col3
        if player1.contains(3) && player1.contains(6) && player1.contains(9){
            winner = 1
        }
        if player2.contains(3) && player1.contains(6) && player1.contains(9){
            winner = 2
        }
        //diagonal
        if player1.contains(1) && player1.contains(5) && player1.contains(9){
            winner = 1
        }
        if player2.contains(1) && player1.contains(5) && player1.contains(9){
            winner = 2
        }
        //diagonal2
        if player1.contains(3) && player1.contains(5) && player1.contains(7){
           winner = 1
        }
        if player2.contains(3) && player1.contains(5) && player1.contains(7){
          winner = 2
        }
        
        if winner != -1{
            var mssg = ""
            if winner == 1 {
              mssg = "Player 1 is the winner"
            }else{
               mssg = "Player 2 is the winner"
            }
            let alert = UIAlertController(title: "Winner", message: mssg, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
}

