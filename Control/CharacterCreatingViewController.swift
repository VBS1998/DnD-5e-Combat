//
//  CharacterCreatingViewController.swift
//  DnD 5e Combat
//
//  Created by Gustavo Vilas Boas on 20/05/19.
//  Copyright © 2019 Gustavo Vilas Boas. All rights reserved.
//

import UIKit

class CharacterCreationViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var charName: UITextField!

    @IBOutlet weak var collectionView: UICollectionView!
    
    var selectedCharacter = DnDCharacter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let nib = UINib.init(nibName: "ClassCollectionViewCell", bundle: nil)
        self.collectionView.register(nib, forCellWithReuseIdentifier: "ClassCollectionViewCell")
        
    }
    

    @IBAction func createCharacter(_ sender: Any) {
        if let name = charName.text{
            if name != ""{
                let player = UserServices.readPlayer()
                selectedCharacter.name = name
                player?.characters.append(selectedCharacter)
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
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ClassCollectionViewCell", for: indexPath) as! ClassCollectionViewCell
        switch(indexPath.row){
        case 0:
            cell.dndClass = .BARBARIAN
            cell.dndClassLabel.text = "Barbarian"
        case 1:
            cell.dndClass = .BARD
            cell.dndClassLabel.text = "Bard"
        case 2:
            cell.dndClass = .CLERIC
            cell.dndClassLabel.text = "Cleric"
        case 3:
            cell.dndClass = .DRUID
            cell.dndClassLabel.text = "Druid"
        case 4:
            cell.dndClass = .FIGHTER
            cell.dndClassLabel.text = "Fighter"
        case 5:
            cell.dndClass = .MONK
            cell.dndClassLabel.text = "Monk"
        case 6:
            cell.dndClass = .PALADIN
            cell.dndClassLabel.text = "Paladin"
        case 7:
            cell.dndClass = .RANGER
            cell.dndClassLabel.text = "Ranger"
        case 8:
            cell.dndClass = .ROGUE
            cell.dndClassLabel.text = "Rogue"
        case 9:
            cell.dndClass = .SORCERER
            cell.dndClassLabel.text = "Sorcerer"
        case 10:
            cell.dndClass = .WARLOCK
            cell.dndClassLabel.text = "Warlock"
        case 11:
            cell.dndClass = .WIZARD
            cell.dndClassLabel.text = "Wizard"
        default:
            cell.dndClass = .NONE
            cell.dndClassLabel.text = "error"
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.2, height: collectionView.frame.height/2.2)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! ClassCollectionViewCell
        cell.alpha = 0.7
        selectedCharacter.dndClass = cell.dndClass
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! ClassCollectionViewCell
        cell.alpha = 1
    }
}
