//
//  Card.swift
//  BlackJack
//
//  Created by Asees on 3/2/15.
//  Copyright (c) 2015 Asees. All rights reserved.
//


import Foundation

class Card{
    
    var suit: Int
    var cardN: Int
    var cardClose: Bool
    
    var pipValue: Int {
        get {
            if cardClose == true{
                return 0
            }
            if cardN >= 10{
                return 10
            }
            else if cardN == 1{
                return 11
            }
            else{
                return cardN
            }
        }
    }
    
    init(suit: Int, cardN: Int){
        self.suit = suit
        self.cardN = cardN
        self.cardClose = false
    }
    
    func suitAsString() -> String{
        switch suit{
        case 0:
            return "diamond"
        case 1:
            return "heart"
        case 2:
            return "club"
        case 3:
            return "spade"
        default:
            return ""
        }
    }
    
    func cardNAsString() -> String{
        switch cardN{
        case 1:
            return "Ace"
        case 11:
            return "Jack"
        case 12:
            return "Queen"
        case 13:
            return "King"
        default:
            return String(cardN)
        }
    }
    
    func description() -> String{
        return "\(cardNAsString()) of \(suitAsString())"
    }
    
    func fileName() -> String{
        if cardClose == true{
            return "closed.gif"
        }
        else{
            var fileName:String = suitAsString() + String(cardN) + ".gif"
            return fileName
        }
    }
    
}