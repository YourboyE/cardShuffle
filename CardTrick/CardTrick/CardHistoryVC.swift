//
//  CardHistoryVC.swift
//  CardTrick
//
//  Created by YBE on 11/7/16.
//  Copyright © 2016 DreamDev. All rights reserved.
//

import UIKit
import Alamofire

class CardHistoryVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
     
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
        print("viewWillAppear \(suitArray.count)")
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return suitArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CardCell", for: indexPath) as? CardCell {

            let deck = suitArray[indexPath.row]
            cell.config(cardPile: [deck])
            
            return cell
        } else {
            return CardCell()
        }
    }

    @IBAction func backBtnTapped(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)

    }
    
}
