//
//  ViewController.swift
//  CS157 blackout game
//
//  Created by Kathy Lin on 7/24/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        enableButtons()
        gameSetup()
    }

    var movesCounter: Int = 0
    
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var btn4: UIButton!
    @IBOutlet var btn5: UIButton!
    @IBOutlet var btn6: UIButton!
    @IBOutlet var btn7: UIButton!
    @IBOutlet var btn8: UIButton!
    @IBOutlet var btn9: UIButton!
    
    @IBOutlet var lblMoves: UILabel!
    
    @IBAction func touchedReset(_ sender: UIButton) {
        enableButtons()
        gameSetup()
    }
    
    func enableButtons(){
        btn1.isEnabled = true
        btn2.isEnabled = true
        btn3.isEnabled = true
        btn4.isEnabled = true
        btn5.isEnabled = true
        btn6.isEnabled = true
        btn7.isEnabled = true
        btn8.isEnabled = true
        btn9.isEnabled = true
    }
    
    func disableButtons(){
        btn1.isEnabled = false
        btn2.isEnabled = false
        btn3.isEnabled = false
        btn4.isEnabled = false
        btn5.isEnabled = false
        btn6.isEnabled = false
        btn7.isEnabled = false
        btn8.isEnabled = false
        btn9.isEnabled = false
    }
    
    func swap(buttonPar: UIButton){
        if buttonPar.backgroundColor == UIColor.red{
            buttonPar.backgroundColor = UIColor.gray
        }
        else{
            buttonPar.backgroundColor = UIColor.red
        }
    }
    
    func checkForWin(){
        if (btn1.backgroundColor == btn2.backgroundColor &&
            btn1.backgroundColor == btn3.backgroundColor &&
            btn1.backgroundColor == btn4.backgroundColor &&
            btn1.backgroundColor == btn5.backgroundColor &&
            btn1.backgroundColor == btn6.backgroundColor &&
            btn1.backgroundColor == btn7.backgroundColor &&
            btn1.backgroundColor == btn8.backgroundColor &&
            btn1.backgroundColor == btn9.backgroundColor){
            
            disableButtons()
            
            let alert = UIAlertController(title: "Alert", message: "You Won! Touch Reset", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
    } //checkForWin
    
    func gameSetup(){
        let lowerBound: Int = 0
        let upperBound: Int = 2
        
        //btn1
        if lowerBound + Int(arc4random_uniform(UInt32(upperBound-lowerBound))) == 0{
            btn1.backgroundColor = UIColor.red
        }
        else {
            btn1.backgroundColor = UIColor.gray
        }
        
        //btn2
        if lowerBound + Int(arc4random_uniform(UInt32(upperBound-lowerBound))) == 0{
            btn2.backgroundColor = UIColor.red
        }
        else {
            btn2.backgroundColor = UIColor.gray
        }
        
        //btn3
        if lowerBound + Int(arc4random_uniform(UInt32(upperBound-lowerBound))) == 0{
            btn3.backgroundColor = UIColor.red
        }
        else {
            btn3.backgroundColor = UIColor.gray
        }
        
        //btn4
        if lowerBound + Int(arc4random_uniform(UInt32(upperBound-lowerBound))) == 0{
            btn4.backgroundColor = UIColor.red
        }
        else {
            btn4.backgroundColor = UIColor.gray
        }
        
        //btn5
        if lowerBound + Int(arc4random_uniform(UInt32(upperBound-lowerBound))) == 0{
            btn5.backgroundColor = UIColor.red
        }
        else {
            btn5.backgroundColor = UIColor.gray
        }
        
        //btn6
        if lowerBound + Int(arc4random_uniform(UInt32(upperBound-lowerBound))) == 0{
            btn6.backgroundColor = UIColor.red
        }
        else {
            btn6.backgroundColor = UIColor.gray
        }
        
        //btn7
        if lowerBound + Int(arc4random_uniform(UInt32(upperBound-lowerBound))) == 0{
            btn7.backgroundColor = UIColor.red
        }
        else {
            btn7.backgroundColor = UIColor.gray
        }
        
        //btn8
        if lowerBound + Int(arc4random_uniform(UInt32(upperBound-lowerBound))) == 0{
            btn8.backgroundColor = UIColor.red
        }
        else {
            btn8.backgroundColor = UIColor.gray
        }
        
        //btn9
        if lowerBound + Int(arc4random_uniform(UInt32(upperBound-lowerBound))) == 0{
            btn9.backgroundColor = UIColor.red
        }
        else {
            btn9.backgroundColor = UIColor.gray
        }
        
        movesCounter = 0
        lblMoves.text = String(movesCounter)
    }
    
    @IBAction func touchedBtn1(_ sender: UIButton) {
        //1,2,4
        swap(buttonPar: btn1)
        swap(buttonPar: btn2)
        swap(buttonPar: btn4)
        movesCounter += 1
        lblMoves.text = String(movesCounter)
        checkForWin()
    }
    
    @IBAction func touchedBtn2(_ sender: UIButton) {
        //1,2,3,5
        swap(buttonPar: btn1)
        swap(buttonPar: btn2)
        swap(buttonPar: btn3)
        swap(buttonPar: btn5)
        movesCounter += 1
        lblMoves.text = String(movesCounter)
        checkForWin()
    }
    
    @IBAction func touchedBtn3(_ sender: UIButton) {
        //2,3,6
        swap(buttonPar: btn2)
        swap(buttonPar: btn3)
        swap(buttonPar: btn6)
        movesCounter += 1
        lblMoves.text = String(movesCounter)
        checkForWin()
    }
    
    @IBAction func touchedBtn4(_ sender: UIButton) {
        //1,4,5,7
        swap(buttonPar: btn1)
        swap(buttonPar: btn4)
        swap(buttonPar: btn5)
        swap(buttonPar: btn7)
        movesCounter += 1
        lblMoves.text = String(movesCounter)
        checkForWin()
    }
    
    
    @IBAction func touchedBtn5(_ sender: UIButton) {
        //2,4,5,6,8
        swap(buttonPar: btn2)
        swap(buttonPar: btn4)
        swap(buttonPar: btn5)
        swap(buttonPar: btn6)
        swap(buttonPar: btn8)
        movesCounter += 1
        lblMoves.text = String(movesCounter)
        checkForWin()
    }
    
    @IBAction func touchedBtn6(_ sender: UIButton) {
        //3,5,6,9
        swap(buttonPar: btn3)
        swap(buttonPar: btn5)
        swap(buttonPar: btn6)
        swap(buttonPar: btn9)
        movesCounter += 1
        lblMoves.text = String(movesCounter)
        checkForWin()
    }
    
    @IBAction func touchedBtn7(_ sender: UIButton) {
        //4,7,8
        swap(buttonPar: btn4)
        swap(buttonPar: btn7)
        swap(buttonPar: btn8)
        movesCounter += 1
        lblMoves.text = String(movesCounter)
        checkForWin()
    }
    
    @IBAction func touchedBtn8(_ sender: UIButton) {
        //5,7,8,9
        swap(buttonPar: btn5)
        swap(buttonPar: btn7)
        swap(buttonPar: btn8)
        swap(buttonPar: btn9)
        movesCounter += 1
        lblMoves.text = String(movesCounter)
        checkForWin()
    }
    
    
    @IBAction func touchedBtn9(_ sender: UIButton) {
        //6,8,9
        swap(buttonPar: btn6)
        swap(buttonPar: btn8)
        swap(buttonPar: btn9)
        movesCounter += 1
        lblMoves.text = String(movesCounter)
        checkForWin()
    }
}

