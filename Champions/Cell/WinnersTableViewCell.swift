//
//  WinnersTableViewCell.swift
//  Champions
//
//  Created by Aluno on 09/11/21.
//

import UIKit

class WinnersTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lbYear: UILabel!
    @IBOutlet weak var lbCountry: UILabel!
    
    @IBOutlet weak var ivWinner: UIImageView!
    @IBOutlet weak var lbWinner: UILabel!
    @IBOutlet weak var lbWinnerScore: UILabel!
    
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var lbVice: UILabel!
    @IBOutlet weak var lbViceScore: UILabel!
    
    func prepare(with worldCup : WorldCupStruct) {
        lbYear.text = String(worldCup.year)
        lbCountry.text = worldCup.country
        
        ivWinner.image = UIImage(named: worldCup.winner)
        lbWinner.text = worldCup.winner
        lbWinnerScore.text = worldCup.winnerScore
        
        ivVice.image = UIImage(named: worldCup.vice)
        lbVice.text = worldCup.vice
        lbViceScore.text = worldCup.viceScore
    }

}
