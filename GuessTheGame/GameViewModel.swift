//
//  GameViewModel.swift
//  GuessTheGame
//
//  Created by Marc Fernández on 18/11/24.
//
import Foundation

class GameViewModel: ObservableObject {
    @Published var currentQuestion: Question?
    @Published var score: Int = 0
    @Published var questionIndex: Int = 0
    @Published var showFinalScreen: Bool = false
    
    private var questions: [Question] = []
    private let totalQuestions = 5

    init() {
        startGame()
    }

    func startGame() {
        score = 0
        questionIndex = 0
        showFinalScreen = false
        questions = allQuestions.shuffled().prefix(totalQuestions).map { $0 }
        loadNextQuestion()
    }

    func loadNextQuestion() {
        if questionIndex < questions.count {
            currentQuestion = questions[questionIndex]
            questionIndex += 1
        } else {
            showFinalScreen = true
        }
    }

    func submitAnswer(_ answer: String) {
        if let currentQuestion = currentQuestion, answer == currentQuestion.correctAnswer {
            score += 10
        } else {
            score -= 5
        }
        questionIndex += 1
        loadNextQuestion()
    }
}
