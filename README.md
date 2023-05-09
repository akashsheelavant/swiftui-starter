# swiftui-starter
A project to demonstrate the use of SwiftUI:
- Creating basic UI elmenets like **Text**, **Button**, **Alert** etc.
- How to use **@State** to store changing data, and why it's needed
- Builing complex layouts using **VStack**, **HStack** as well as combining them together to make grids
- Creating **alerts** by defining the conditions under which the alert should be shown, then toggling that state from elsewhere.
- How to break up our code into small parts using **view composition** and custom **view modifiers**, which in turn allows us to build more complex programs without getting lost in code.

It is a simple Rock, Paper, Scissor game:
- Each turn of the game the app will randomly pick either rock, paper, or scissors.
- Each turn the app will alternate between prompting the player to win or lose.
- The player must then tap the correct move to win or lose the game.
- If they are correct they score a point; otherwise they lose a point.
- The game ends after 10 questions, at which point their score is shown.
