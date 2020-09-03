//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Rob Ranf on 9/3/20.
//  Copyright © 2020 Rob Ranf. All rights reserved.
//
//  This is the ViewModel in MVVM

import SwiftUI

//  Why is this a class not a struct? Thinking about what a ViewModel is, it's essentially a portal between our View and our Model
//  And all of our Views (assuming we make more) may want to use it to see the Model
//  Think of it as a doorway for the Views to get to the Model
//  We're making our gameModel var private in order to confine it to this specific EmojiMemoryGame class
//  We could do it as private(set) and think about that as if the this is the doorway, we're closing the door but by using (set) it's a glass door
//  So only EmojiMemoryGame can modify the Model but everything else can see the Model
//  Instead we're creating a var named cards that returns our gameModel cards in order to access the Model

class EmojiMemoryGame {
    private var _gameModel: MemoryGame<String>
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        _gameModel.cards
    }
    
    // MARK: - Intent(s)
    
    func chooseCard(card: MemoryGame<String>.Card) {
        _gameModel.choose(card: card)
    }
}
