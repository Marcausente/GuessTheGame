//
//  GuessTheGameApp.swift
//  GuessTheGame
//
//  Created by Marc Fernández on 18/11/24.
//

import SwiftUI

@main
struct GuessTheGameApp: App {
    var body: some Scene {
        WindowGroup {
            GameView()
        }
    }
}


struct Question {
    let questionText: String
    let options: [String]
    let correctAnswer: String
}

let allQuestions: [Question] = [
    Question(
        questionText: "¿Cuál de estos videojuegos pertenece a la saga de The Legend of Zelda?",
        options: ["Ocarina of Time", "Skyrim", "Halo", "Call of Duty", "The Witcher"],
        correctAnswer: "Ocarina of Time"
    ),
    Question(
        questionText: "¿En qué videojuego se encuentra el personaje Mario?",
        options: ["The Sims", "Minecraft", "Super Mario Bros", "Final Fantasy", "Dark Souls"],
        correctAnswer: "Super Mario Bros"
    ),
    Question(
        questionText: "¿Cuál de estos juegos es un Battle Royale?",
        options: ["Fortnite", "God of War", "Resident Evil", "Assassin's Creed", "Hollow Knight"],
        correctAnswer: "Fortnite"
    ),
    Question(
        questionText: "¿Cuál de estos juegos fue desarrollado por Rockstar Games?",
        options: ["Red Dead Redemption", "Cyberpunk 2077", "Zelda: Breath of the Wild", "Half-Life", "Street Fighter"],
        correctAnswer: "Red Dead Redemption"
    ),
    Question(
        questionText: "¿Qué videojuego popular se juega con bloques y permite construir?",
        options: ["Minecraft", "FIFA", "Tetris", "League of Legends", "Metal Gear Solid"],
        correctAnswer: "Minecraft"
    ),
    Question(
        questionText: "¿Qué videojuego tiene como protagonista a un cazador de demonios llamado Dante?",
        options: ["Devil May Cry", "Diablo", "God of War", "Sekiro", "Bayonetta"],
        correctAnswer: "Devil May Cry"
    ),
    Question(
        questionText: "¿En qué videojuego puedes cazar monstruos gigantes con armas personalizadas?",
        options: ["Monster Hunter", "Elden Ring", "Pokémon", "Horizon Zero Dawn", "Destiny"],
        correctAnswer: "Monster Hunter"
    ),
    Question(
        questionText: "¿Cuál de estos videojuegos es un juego de disparos en primera persona?",
        options: ["Call of Duty", "Animal Crossing", "Super Smash Bros", "Zelda", "Stardew Valley"],
        correctAnswer: "Call of Duty"
    ),
    Question(
        questionText: "¿En qué videojuego aparece un héroe llamado Geralt de Rivia?",
        options: ["The Witcher", "Elder Scrolls", "Dark Souls", "Dragon Age", "Dragon Quest"],
        correctAnswer: "The Witcher"
    ),
    Question(
        questionText: "¿Qué videojuego es conocido por su dificultad extrema y su combate táctico?",
        options: ["Dark Souls", "Fortnite", "Overwatch", "Persona 5", "Civilization VI"],
        correctAnswer: "Dark Souls"
    ),
    Question(
        questionText: "¿En qué videojuego debes sobrevivir a una invasión alienígena y salvar la humanidad?",
        options: ["Halo", "The Last of Us", "Call of Duty", "Mass Effect", "Destiny"],
        correctAnswer: "Halo"
    ),
    Question(
        questionText: "¿Qué videojuego se basa en cazar criaturas míticas llamadas colosos?",
        options: ["Shadow of the Colossus", "Monster Hunter", "Elden Ring", "Fable", "Hollow Knight"],
        correctAnswer: "Shadow of the Colossus"
    ),
    Question(
        questionText: "¿En qué videojuego puedes atrapar y entrenar criaturas llamadas Pokémon?",
        options: ["Pokémon", "Digimon", "Monster Rancher", "Yu-Gi-Oh!", "Animal Crossing"],
        correctAnswer: "Pokémon"
    ),
    Question(
        questionText: "¿Cuál de estos juegos tiene una estética retro y combates de ritmo rápido?",
        options: ["Celeste", "Hollow Knight", "Shovel Knight", "Cuphead", "Stardew Valley"],
        correctAnswer: "Cuphead"
    ),
    Question(
        questionText: "¿Qué videojuego cuenta la historia de Arthur Morgan en el Salvaje Oeste?",
        options: ["Red Dead Redemption 2", "Fallout: New Vegas", "Far Cry 5", "Days Gone", "Assassin's Creed III"],
        correctAnswer: "Red Dead Redemption 2"
    ),
    Question(
        questionText: "¿Cuál es el videojuego más conocido por sus bloques y construcción infinita?",
        options: ["Minecraft", "Roblox", "Terraria", "Fortnite", "Lego Worlds"],
        correctAnswer: "Minecraft"
    ),
    Question(
        questionText: "¿En qué videojuego debes resolver puzles en un mundo lleno de portales?",
        options: ["Portal", "Half-Life", "The Witness", "Inside", "Control"],
        correctAnswer: "Portal"
    ),
    Question(
        questionText: "¿Qué juego tiene a Kratos como protagonista?",
        options: ["God of War", "Dark Souls", "Assassin's Creed", "Elden Ring", "Shadow of Mordor"],
        correctAnswer: "God of War"
    ),
    Question(
        questionText: "¿Qué criaturas alienígenas aparecen frecuentemente en Half-Life?",
        options: ["Headcrabs", "Flood", "Necromorfos", "Zergs", "Lickers"],
        correctAnswer: "Headcrabs"
    )
]

