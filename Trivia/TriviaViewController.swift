//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Jasmine Ben-Whyte on 11/3/24.
//

import UIKit

class TriviaViewController: UIViewController {
    @IBOutlet weak var QCounter: UILabel!
    @IBOutlet weak var QCategory: UILabel!
    @IBOutlet weak var QDisplay: UILabel!
    
    @IBOutlet weak var Option1: UIButton!
    @IBOutlet weak var Option2: UIButton!
    @IBOutlet weak var Option3: UIButton!
    @IBOutlet weak var Option4: UIButton!
    private var selectedIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let questions = extractQuestionFromDatabase()
        configure(with: questions[selectedIndex])
    }
    
    private func extractQuestionFromDatabase() ->[TriviaQuestions] {
        let pack1 = TriviaQuestions(category: "Science",
                                    question: "What is the chemical symbol for gold?",
                                    options: ["Ag", "Au", "Ga", "Ge"])
        
        let pack2 = TriviaQuestions(category: "Geography",
                                    question: "Which country is known as the Land of the Rising Sun?",
                                    options: ["China" , "Australia", "Japan", "South Korea"])
        
        let pack3 = TriviaQuestions(category: "Entertainment",
                                    question: "Who wrote the epic fantasy series 'A Song of Ice and Fire', which inspired the television series 'Game of Thrones'?",
                                    options: ["J.K. Rowling" , "George R.R. Martin", "J.R.R. Tolkien", "Stephen King"])
        
        return [pack1, pack2, pack3]
    }
    
    private func configure(with questions: TriviaQuestions) {
        QCounter.text = String(selectedIndex+1)
        QCategory.text = questions.category
        QDisplay.text = questions.question
        Option1.setTitle(questions.options[0], for: .normal)
        Option2.setTitle(questions.options[1], for: .normal)
        Option3.setTitle(questions.options[2], for: .normal)
        Option4.setTitle(questions.options[3], for: .normal)
    }

}
