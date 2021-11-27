//
//  CountryDetailViewController.swift
//  Champions
//
//  Created by Aluno on 27/11/21.
//

import UIKit

class CountryDetailViewController: UIViewController {
    
    @IBOutlet weak var ivCountry: UIImageView!
    @IBOutlet weak var lbCountry: UILabel!
    @IBOutlet weak var lbTimesChampion: UILabel!
    @IBOutlet weak var lbFinals: UILabel!
    
    var countryChampion : CountryChampionStruct!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
    }
    
    func setupData() {
        ivCountry.image = UIImage(named: countryChampion.winner)
        lbCountry.text = countryChampion.winner
        lbTimesChampion.text = "Copas do mundo conquistadas: \(countryChampion.cups.count)"
        var finals = ""
        countryChampion.cups.forEach{ cupWon in
            finals.append("- \(cupWon.country), \(cupWon.year) (\(cupWon.winner) \(cupWon.winnerScore) x \(cupWon.viceScore) \(cupWon.vice)) \n")
        }
        lbFinals.text = finals
    }

}
