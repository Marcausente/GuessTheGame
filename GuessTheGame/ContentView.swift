//
//  ContentView.swift
//  GuessTheGame
//
//  Created by Marc Fernández on 18/11/24.
//

import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel()

    var body: some View {
        VStack {
            if viewModel.showFinalScreen {
                FinalScreen(score: viewModel.score, onRestart: {
                    viewModel.startGame()
                })
            } else {
                VStack {
                    Text(viewModel.currentQuestion?.questionText ?? "")
                        .font(.headline)
                        .padding()

                    ForEach(viewModel.currentQuestion?.options ?? [], id: \.self) { option in
                        Button(action: {
                            viewModel.submitAnswer(option)
                        }) {
                            Text(option)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        .padding(.horizontal)
                    }

                    Text("Puntuación: \(viewModel.score)")
                        .font(.subheadline)
                        .padding()
                }
                .padding()
            }
        }
        .background(Color(.systemBackground))
        .preferredColorScheme(.dark)
    }
}
struct FinalScreen: View {
    let score: Int
    let onRestart: () -> Void

    var body: some View {
        VStack {
            Text("Juego terminado")
                .font(.largeTitle)
                .padding()

            if score >= 30 {
                Text("¡Puntuacion maxima eres la verdadera cabra!🐐")
                    .font(.title)
            } else if score >= 20 {
                Text("Bastante buen trabjo pero te toca mejorar un poco crack")
                    .font(.title)
            } else {
                Text("Fatal, aprende un poco que te hace falta")
                    .font(.title)
            }

            Text("Puntuación final: \(score)")
                .font(.headline)
                .padding()

            Button(action: {
                onRestart()
            }) {
                Text("Jugar de nuevo")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
