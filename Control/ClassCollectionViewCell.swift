//
//  ClassCollectionViewCell.swift
//  DnD 5e Combat
//
//  Created by Gustavo Vilas Boas on 20/05/19.
//  Copyright © 2019 Gustavo Vilas Boas. All rights reserved.
//

import UIKit

class ClassCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var dndClassLabel: UILabel!
    
    var dndClass : DnDClass = .NONE
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
