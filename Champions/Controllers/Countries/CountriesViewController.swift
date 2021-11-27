//
//  CountriesViewController.swift
//  Champions
//
//  Created by Aluno on 27/11/21.
//

import UIKit

class CountriesViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {

    @IBOutlet weak var tvCountries: UITableView!
    
    let winnersList = Util.loadWinners()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        winnersList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvCountries.dequeueReusableCell(withIdentifier: "Countries") as! CountriesTableViewCell
        cell.prepare(with: winnersList[indexPath.row])
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! CountryDetailViewController
        let countryChampion = winnersList[tvCountries.indexPathForSelectedRow!.row]
        
        viewController.countryChampion = countryChampion
    }

}
