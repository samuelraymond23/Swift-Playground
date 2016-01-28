//
//  ViewController.swift
//  Quiz App
//
//  Created by student on 1/27/16.
//  Copyright © 2016 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionlabel: UILabel!
    @IBOutlet var answerlabel: UILabel!
    
    let questions: [String] = ["From what is cognac made?",
        "What is 7+7?",
        "What is the capital of Vermont?"]
    
    let answers: [String] = ["Grapes",
        "14",
        "Montpelier"]
    
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(sender: AnyObject){
        ++currentQuestionIndex
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionlabel.text = question
        answerlabel.text = "????"
    }
    
    @IBAction func showAnswer(sender: AnyObject){
        let answer: String = answers[currentQuestionIndex]
        answerlabel.text = answer
    }
    override func viewDidLoad(){
        super.viewDidLoad()
        questionlabel.text = questions[currentQuestionIndex]
    }
    
}



