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

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return worldCups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WinnersCell", for: indexPath) as! WinnersTableViewCell
        let worldcup = worldCups[indexPath.row]
        cell.prepare(with: worldcup)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController =  segue.destination as! WorldCupViewController
        let worldCup = worldCups[tableView.indexPathForSelectedRow!.row]
        
        viewController.worldCup = worldCup
    }

}
