//
//  GameViewController.swift
//  DnD 5e Combat
//
//  Created by Gustavo Vilas Boas on 20/05/19.
//  Copyright © 2019 Gustavo Vilas Boas. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    var playerCharacter : DnDCharacter!
    
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        infoLabel.text = "\(playerCharacter.name) / \(playerCharacter.dndClass)"
    }
    

}
