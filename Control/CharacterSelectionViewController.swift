//
//  CharacterSelectionViewController.swift
//  DnD 5e Combat
//
//  Created by Gustavo Vilas Boas on 20/05/19.
//  Copyright © 2019 Gustavo Vilas Boas. All rights reserved.
//

import UIKit

class CharacterSelectionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let nib = UINib.init(nibName: "PlayerTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "PlayerTableViewCell")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UserServices.readPlayer()?.characters.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerTableViewCell", for: indexPath) as? PlayerTableViewCell
        cell?.name.text = UserServices.readPlayer()?.characters[indexPath.row].name
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
    }
    
}
