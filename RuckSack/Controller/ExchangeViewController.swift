//
//  ExchangeViewController.swift
//  Bundle
//
//  Created by Patrick Wiley on 29.08.19.
//  Copyright © 2019 Patrick Wiley. All rights reserved.
//

import UIKit

class ExchangeViewController: ViewController {
    var exchange = Exchange()
    
    @IBOutlet var tableViewExchange: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableViewExchange.estimatedRowHeight = 120
        exchange.currencies = exchange.createCurrency()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        tableViewExchange.backgroundView = UIImageView(image: UIImage(named: "Background_Exchange"))
        //tableViewExchange.invalidateIntrinsicContentSize()
    }


}

extension ExchangeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exchange.currencies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currency = exchange.currencies[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExchangeCell") as! ExchangeCell
        cell.setCurrency(currency: currency)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
        
    }
}

