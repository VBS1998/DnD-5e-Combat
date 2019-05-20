//
//  DnDCharacter.swift
//  DnD 5e Combat
//
//  Created by Gustavo Vilas Boas on 19/05/19.
//  Copyright © 2019 Gustavo Vilas Boas. All rights reserved.
//

import Foundation

// ABSTRACT CLASS, DO NOT INSTATIATE
class DnDCharacter : Codable{
    
    var dndClass : Classes
    
    var name  : String
    var level : Int
    var exp   : Int
    
    var moves : [Move] = []
    
    required init(){
        self.dndClass = .NONE
        self.level = 1
        self.exp = 0
        self.name = ""
    }
}
