//
//  PlayerTableViewCell.swift
//  DnD 5e Combat
//
//  Created by Gustavo Vilas Boas on 20/05/19.
//  Copyright © 2019 Gustavo Vilas Boas. All rights reserved.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    var dndCharacter : DnDCharacter?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
