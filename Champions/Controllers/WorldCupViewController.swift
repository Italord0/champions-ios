//
//  WorldCupViewController.swift
//  Champions
//
//  Created by Aluno on 06/11/21.
//

import UIKit

class WorldCupViewController: UIViewController {
    
    var worldCup : WorldCupStruct!

    @IBOutlet weak var ivWinner: UIImageView!
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var lbScore: UILabel!
    @IBOutlet weak var lbWinner: UILabel!
    @IBOutlet weak var lbVice: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTitle()
        setupData()
    }
    
    private func setupTitle() {
        navigationItem.title = worldCup.year.stringValue
    }
    
    private func setupData(){
        ivWinner.image = UIImage(named: worldCup.winner)
        ivVice.image = UIImage(named: worldCup.vice)
        lbScore.text = "\(worldCup.winnerScore) x \(worldCup.viceScore)"
        lbWinner.text = worldCup.winner
        lbVice.text = worldCup.vice
        
    }

}
