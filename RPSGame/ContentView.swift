//
//  ContentView.swift
//  RPSGame
//
//  Created by Akash Sheelavant on 19/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentChoice: String = "rock"
    @State private var shouldWin: Bool = true
    @State private var playerScore = 0
    @State private var counter = 0
    @State private var showingAlert = false
    
    private let choices = ["rock", "paper", "scissor"]
    private let winningMoves = ["paper", "scissor", "rock"]
    
    var body: some View {
        VStack(spacing: 50) {
            VStack {
                Text("Player Score: \(playerScore)")
                    .largeTitleStyle()
                Text("App move: \(currentChoice)")
                    .subTitleStyle()
                Text("Outcome: \(shouldWin ? "win" : "loose")")
                    .subTitleStyle()
            }
            
            VStack {
                Text("Select player move")
                    .largeTitleStyle()
                HStack(spacing: 30) {
                    Button("Rock") {
                        updateScore(selectedMove: choices[0])
                        updateMoves()
                    }
                    .subTitleStyle()
                    
                    Button("Paper") {
                        updateScore(selectedMove: choices[1])
                        updateMoves()
                    }
                    .subTitleStyle()
                    
                    Button("Scissor") {
                        updateScore(selectedMove: choices[2])
                        updateMoves()
                    }
                    .subTitleStyle()
                    
                }
            }
            .alert(isPresented: $showingAlert) {
                Alert(
                    title: Text("Game Over!"),
                    message: Text("Your final score: \(playerScore)"),
                    dismissButton: .default(Text("OK"), action: {
                        resetData()
                    })
                )
            }
        }
    }
    
    func updateScore(selectedMove: String) {
        if let currentIndex = choices.firstIndex(of: currentChoice),
           let winningIndex = winningMoves.firstIndex(of: selectedMove) {
            if ((shouldWin && currentIndex == winningIndex) || (!shouldWin && currentIndex != winningIndex)) {
                playerScore = playerScore + 1
            } else {
                playerScore = playerScore - 1
            }
        }
        counter += 1
        if counter == 10 {
            showingAlert = true
            
        }
    }
    
    func resetData() {
        playerScore = 0
        counter = 0
        //showingAlert = false
        updateMoves()
    }
    
    func updateMoves() {
        let random = Int.random(in: 0...2)
        currentChoice = choices[random]
        shouldWin.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
