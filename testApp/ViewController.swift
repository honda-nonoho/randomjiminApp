//
//  ViewController.swift
//  jiminApp
//
//
//  Created by nonoho.honda on 2020/05/18.
//  Copyright © 2020 nonoho.honda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var answerImageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    //じゃんけん（数字）
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        
        
        
        //新しいじゃんけんの結果を出すが、前回の結果と異なる
        var newAnswerNumber = 0
        
        //ランダムに結果を出すが、前回の結果と異なる
        //repeat は繰り返しを意味する
        repeat {
            
            //0,1,2の数値をランダムに算出（乱数）
            newAnswerNumber = Int.random(in: 0..<3)
            
            //前回と同じ結果のときは、再度、ランダム
            //異なる結果のときは、repeat
        } while answerNumber == newAnswerNumber
        
        //新しいじゃんけんの結果を格納
        answerNumber = newAnswerNumber
        
       if answerNumber == 0 {
        
          //グー
          answerLabel.text = "ジミン１"
          answerImageView.image = UIImage(named: "jimin1")
        
       } else if answerNumber == 1 {
        
          //チョキ
          answerLabel.text = "ジミン２"
          answerImageView.image = UIImage(named: "jimin2")
        
       } else if answerNumber == 2 {
        
          //パー
          answerLabel.text = "ジミン３"
          answerImageView.image = UIImage(named: "jimin3")
         
    }
  
    }
}
