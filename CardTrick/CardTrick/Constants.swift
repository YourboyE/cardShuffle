//
//  Constants.swift
//  CardTrick
//
//  Created by YBE on 11/7/16.
//  Copyright © 2016 DreamDev. All rights reserved.
//

import Foundation

let BASE_URL = "https://deckofcardsapi.com/api/deck/new/draw/?count=1"

var cardlist = [CardPile]()

var suitArray = [String]()
var imageArray = [String]()


typealias DownloadComplete = () -> ()
