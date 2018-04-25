//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT
// Get the user input

// Create a loop that runs forever until we force it to stop
var input = "" // Create a global variable called "input" and for now, set it to an empty string
while 1 == 1 {
    
    // Prompt the user
    
    // Test #1: Get input from the user and make sure it is not nil
    guard let givenInput = readLine() else {
        
        // If the input was nil, we need to ask for input again
        continue // will skip up to the top of the while loop
    }
    
    // Test #2: Make sure the input is the correct length
    //          See if the count of characters is less than 1 OR more than 255
    if givenInput.count < 1 || givenInput.count > 255 {
        
        // The input was too small or too large
        // So, ask for input again
        continue
        
    }
    
    // If we got here, we must have input that is valid
    // So, stop looping and go to PROCESS section
    input = givenInput
    break // Stops the while loop
    
}


// Look at the input provided
// print("You said:")
// print(rawInput) // original optional String
// print(input)    // non-optional String created by the guard-let statement

// PROCESS
// Inspect each character of the String named input
var happyCount = 0
var sadCount = 0
for individualCharacter in input {
    
    // DEBUG (see what character we are dealing with right now)
    // print(individualCharacter)
    
    // Categorize the character
    if individualCharacter == "😃" || individualCharacter == "😊" || individualCharacter == "🙂" || individualCharacter == "😄" {
        // "Happy", so add one to a variable to track occurences
        // of "happy" emojis
        happyCount += 1
    } else if individualCharacter == "☹️" || individualCharacter == "🙁" || individualCharacter == "😕" || individualCharacter == "😔" {
        // "Sad", so add one to a variable to track occurences
        // of "sad" emojis
        sadCount += 1
    }
    
}

// Output
// Tell the user "happy", "sad", or "unsure" based on counts above
if happyCount > sadCount {
    print("Happy")
} else if sadCount > happyCount {
    print("Sad")
} else if happyCount == sadCount {
    print("Unsure")
} else if happyCount == 0 && sadCount == 0 {
    print("none")
}
