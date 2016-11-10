//
//  CardPile.swift
//  CardTrick
//
//  Created by YBE on 11/7/16.
//  Copyright © 2016 DreamDev. All rights reserved.
//

import UIKit
import Alamofire

class CardPile {
    
    var _suit: String?
    var _image: String?
    
    var suit: String {
        if _suit == nil {
            _suit = ""
        }
        return _suit!
    }
    
    var image: String {
        if _image == nil {
            _image = ""
        }
        return _image!
    }
    
    init () {}
    
    init(cardDict: Dictionary<String, AnyObject>) {
        
        if let cards = cardDict["cards"] as? [Dictionary<String, AnyObject>] {
            
            if let suit = cards[0]["suit"] as? String {
                self._suit = suit.capitalized
                suitArray.append(_suit!)
            }
            
            if let image = cards[0]["image"] as? String {
                self._image = image
                
            }
        }
    }

    
        func downloadRandomCard(completed: @escaping DownloadComplete) {
    
            Alamofire.request(BASE_URL).responseJSON { response in
    
                let result = response.result
    
                if let dict = result.value as? Dictionary<String, AnyObject> {
    
                    //print(response)
                    
                    if let cards = dict["cards"] as? [Dictionary<String, AnyObject>] {
                        if let suit = cards[0]["suit"] as? String {
                            self._suit = suit.capitalized
                        }
    
                        if let image = cards[0]["image"] as? String {
                            self._image = image
    
                        }
                        
                        if let list = dict["cards"] as? [Dictionary<String, AnyObject>] {
                            
                            for obj in list {
                                let cards = CardPile(cardDict: obj)
                                cardlist.append(cards)
                                suitArray.append(self._suit!)

                            }
                        
                    }
                        
                }
            }
            completed()
            
        }
    }
}
