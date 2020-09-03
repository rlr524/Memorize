//
//  MemoryGame.swift
//  Memorize
//
//  Created by Rob Ranf on 9/3/20.
//  Copyright © 2020 Rob Ranf. All rights reserved.
//
// This is the Model in MVVM

import Foundation

// Rememeber our model is UI agnostic
// We are creating a struct here named MemoryGame and defining a generic type that we will use in the struct with <>
// Once we actually initialize (create an instance of) our struct we will initialize it with <String> because we are using emoji which have their UTF values stored as a string
struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("Card chosen: \(card)")
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
