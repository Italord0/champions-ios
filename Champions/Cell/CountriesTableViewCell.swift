//
//  CountriesTableViewCell.swift
//  Champions
//
//  Created by Aluno on 27/11/21.
//

import UIKit

class CountriesTableViewCell: UITableViewCell {

    @IBOutlet weak var ivCountry: UIImageView!
    @IBOutlet weak var tvCountry: UILabel!
    
    func prepare(with countryChampion : CountryChampionStruct) {
        ivCountry.image = UIImage(named: countryChampion.winner)
        tvCountry.text = countryChampion.winner
    }

}
