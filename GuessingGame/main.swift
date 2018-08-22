//
//  main.swift
//  GuessingGame
//
//  Created by Zachary Harper on 8/20/18.
//  Copyright © 2018 Zachary Harper. All rights reserved.
//

import Foundation
//Variable that determines whether or not we're still playing the game
var playingGame = true

//This loop will run while we're playing the game
repeat {
    //This is the random number that we generated. We cast it from UInt32 to an Int
    
    let randomNumber = Int(arc4random_uniform(101))
    
    print("Random Number: \(randomNumber)")
    
    //This is the number of guesses a user has to get it right
    var numberOfGuesses = 5
    
    //Welcome the user and prompt them for input
    print("Welcome to the Guessing Game!")
    print("Please guess a number between 0 to 100.")
    
    var userGuess = Int(readLine()!)
    
    //Input Validation
    while userGuess == nil {
        //Prompt the user for
        print("Please enter a valid number")
        //Get user input again
        userGuess = Int(readLine()!)
        
    }

    
    //Make another if statement that says if the user's guess is not equal to the random number, print out whether the guess is too high or too low
    if userGuess != randomNumber {
        
        if userGuess! > randomNumber {
            print("You guessed too high.")
        } else if userGuess! < randomNumber {
            print("You guessed too low.")
        }
    }
    
    if userGuess != randomNumber {
        numberOfGuesses -= 1
        print("You have \(numberOfGuesses) guesses left.")
        print("Please enter your next guess.")
        userGuess = Int(readLine()!)
   
    }; playingGame = true
    
    
    if userGuess == randomNumber {
        print("You guessed the number")
        playingGame = false
        
    }; if userGuess == randomNumber {
        //Tell the user they won and ask them if they want to play again
        print("You win!")
        print("Would you like to play again? Y/N")
        
        
        if numberOfGuesses == 0 && userGuess != randomNumber {
            print("Game Over")
            print("You ran our of guesses. The number was \(randomNumber).")
            print("Would you like to play again.")
            var stillPlaying = readLine()!.uppercased()
            while stillPlaying != "Y" && stillPlaying != "N"{
                print("Would you like to play again Y/N")
                stillPlaying = readLine()!
            
            }
            if stillPlaying == "N"{
                playingGame = false
            }
            
        }
        
        var stillPlaying = readLine()!.uppercased()
        //If they HAVEN'T entered a Y or an N, keep asking them for input until they do
        while stillPlaying != "Y" && stillPlaying != "N" {
            print("Would you like to play again? Y/N")
            stillPlaying = readLine()!
        }
        
        //If they entered an N, set playingGame to false (which will end the game)
        if stillPlaying == "N" {
            playingGame = false
        
            
        }
        
        
    }
    
} while playingGame == true





