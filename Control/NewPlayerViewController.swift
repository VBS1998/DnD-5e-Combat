//
//  NewPlayerViewController.swift
//  DnD 5e Combat
//
//  Created by Gustavo Vilas Boas on 19/05/19.
//  Copyright © 2019 Gustavo Vilas Boas. All rights reserved.
//

import UIKit

class NewCharacterViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    
    var player : Player?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func createCharacter(_ sender: Any) {
        
        if let name = self.name.text{
            if name != ""{
                self.player = Player(name)
                var players = UserServices.readPlayers()
                players.append(self.player!)
                UserServices.writePlayers(players)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? CharacterSelectionViewController{
            dest.player = self.player
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
