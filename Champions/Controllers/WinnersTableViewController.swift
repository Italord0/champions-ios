//
//  WinnersTableViewController.swift
//  Champions
//
//  Created by Aluno on 06/11/21.
//

import UIKit

class WinnersTableViewController: UITableViewController {

    var worldCups = [WorldCupStruct]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    func loadData(){
        worldCups = Util.loadWorldCups()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return worldCups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WinnersCell", for: indexPath) as! WinnersTableViewCell
        let worldcup = worldCups[indexPath.row]
        cell.configure(with: worldcup)
        return cell
    }

}
