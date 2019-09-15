//
//  ExchangeCell.swift
//  Bundle
//
//  Created by Patrick Wiley on 06.09.19.
//  Copyright © 2019 Patrick Wiley. All rights reserved.
//

import UIKit

class ExchangeCell: UITableViewCell {
    
    @IBOutlet weak var exchangeView: UIView!
    @IBOutlet weak var imageCurrency: UIImageView!
    @IBOutlet weak var shortLabel: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var flagCurrency: UIImageView!
    @IBOutlet weak var amount: UITextField!
    
    func setCurrency(currency: Currency) {
        imageCurrency.image = currency.image
        shortLabel.text = currency.shortLabel
        name.text = currency.name
        flagCurrency.image = currency.flag
        amount.text = currency.amount
        
        
    }
    
}
