//
//  ViewController.swift
//  Quiz
//
//  Created by Eric Beasley on 12/18/15.
//  Copyright © 2015 eric j beasley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = ["From what is cognac made?", "What is 7+7?", "What is the capital of Vermont?"]
    let answers: [String] = ["Grapes", "14", "Montepelier"]
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNexQuestion(sender: AnyObject) {
        ++currentQuestionIndex
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(sender: AnyObject) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
}


