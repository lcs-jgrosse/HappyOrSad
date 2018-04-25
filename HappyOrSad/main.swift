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
var rawInput = readLine()

// Unwrap rawInput, an optional String, to be sure it is not nil
guard let input = rawInput else {
    // Error
    exit(9)
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
} else if happyCount == 0 && sadCount == 0  {
    print("none")
} else if happyCount == sadCount {
    print("Unsure")
}
