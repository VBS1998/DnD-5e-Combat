//
//  Player.swift
//  DnD 5e Combat
//
//  Created by Gustavo Vilas Boas on 19/05/19.
//  Copyright © 2019 Gustavo Vilas Boas. All rights reserved.
//

import Foundation

class Player : Codable{
    
    var characters : [DnDCharacter] = []
    
    var name : String
    
    init(_ name : String){
        self.name = name
    }
    
}
