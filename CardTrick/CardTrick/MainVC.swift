//
//  MainVC.swift
//  CardTrick
//
//  Created by YBE on 11/7/16.
//  Copyright © 2016 DreamDev. All rights reserved.
//

import UIKit
import Alamofire

class MainVC: UIViewController {

    @IBOutlet weak var cardImg: UIImageView!
    @IBOutlet weak var textLbl: UILabel!

    var cardPile: CardPile!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cardPile = CardPile()
        
        self.textLbl.text = "Hit the button below to select a card"
        
    }

   
    @IBAction func onShuffleCardTapped(_ sender: Any) {
       
        cardPile.downloadRandomCard {
            
            self.textLbl.text = ("Your Suit is: \(self.cardPile.suit)")
            
            self.cardImg.image = UIImage(named: self.cardPile.suit)
        
        }
        
        }
    
    @IBAction func seeHistoryBtnTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "SeeHistory", sender: nil)
        
    }
    

    
}


