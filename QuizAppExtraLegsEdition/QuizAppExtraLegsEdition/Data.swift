//
//  Data.swift
//  Quiz App
//
//  Created by haoyuan on 23/6/22.
//

import Foundation

struct Question {
    var title: String
    var option1: String
    var option2: String
    var option3: String
    var option4: String
    var correctAns: Int
}

var TestQuizQuestions = [
    Question(title: "Is Nutella and Pepsi a good combination?", option1: "Yes", option2: "420", option3: "No", option4: "Maybe", correctAns: 2),
    Question(title: "Is Kaitlyn a horse?", option1: "Yes", option2: "Yes", option3: "No", option4: "Yes", correctAns: 4),
    Question(title: "When was YJ born?", option1: "1869", option2: "1500", option3: "Yesterday", option4: "The year YJ was Born", correctAns: 4),
    Question(title: "How many seasons of Paw Patrol were there as of 2020?", option1: "6", option2: "5", option3: "4", option4: "7", correctAns: 1),
    Question(title: "How amny stickers are on Jiachen's computer", option1: "1", option2: "7", option3: "8", option4: "3", correctAns: 3),
]

var pointsCount = 0
