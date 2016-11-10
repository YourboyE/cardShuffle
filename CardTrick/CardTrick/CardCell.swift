//
//  CardCell.swift
//  CardTrick
//
//  Created by YBE on 11/7/16.
//  Copyright © 2016 DreamDev. All rights reserved.
//

import UIKit

class CardCell: UITableViewCell {

    @IBOutlet weak var cardImg: UIImageView!
    @IBOutlet weak var cardLbl: UILabel!
    
 
    func configureCell(cardPile: CardPile) {
        cardLbl.text = cardPile.suit
        print(cardPile.suit)
        //cardImg.image = UIImage(named: "\(cardPile.cardHistorySuit)")

    }
    
    func config(cardPile: [String]) {
        
        for x in cardPile {
            cardLbl?.text = x
            cardImg.image = UIImage(named: x)
        }
        
    }

}
    

