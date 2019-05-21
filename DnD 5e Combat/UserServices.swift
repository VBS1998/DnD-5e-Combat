//
//  UserServices.swift
//  DnD 5e Combat
//
//  Created by Gustavo Vilas Boas on 19/05/19.
//  Copyright © 2019 Gustavo Vilas Boas. All rights reserved.
//

import Foundation

class UserServices{
    
    
    static func writePlayer(_ player: Player){
        do{
            let data = try JSONEncoder().encode(player)
            UserDefaults.standard.set(data, forKey: "Player")
        }catch{}
    }
    static func readPlayer() -> Player?{
        do{
            let data = UserDefaults.standard.data(forKey: "Player")
            if let data = data{
                return try JSONDecoder().decode(Player.self, from: data)
            }
            
        }catch{}
        return nil
    }
}
