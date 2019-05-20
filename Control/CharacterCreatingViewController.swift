//
//  CharacterCreatingViewController.swift
//  DnD 5e Combat
//
//  Created by Gustavo Vilas Boas on 20/05/19.
//  Copyright © 2019 Gustavo Vilas Boas. All rights reserved.
//

import UIKit

class CharacterCreationViewController: UIViewController {

    @IBOutlet weak var charName: UITextField!

    var selectedCharacter : DnDCharacter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func createCharacter(_ sender: Any) {
        if let name = charName.text{
            if name != ""{
                let player = UserServices.readPlayer()
                let character = DnDCharacter()
                character.name = name
                player?.characters.append(character)
                self.selectedCharacter = character
                UserServices.writePlayer(player!)
                performSegue(withIdentifier: "characterCreated", sender: self)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if let dest = segue.destination as? GameViewController{
            dest.playerCharacter = self.selectedCharacter
        }
    }
}
