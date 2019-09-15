//
//  ExchangeModel.swift
//  Bundle
//
//  Created by Patrick Wiley on 27.08.19.
//  Copyright © 2019 Patrick Wiley. All rights reserved.
//

import Foundation
import UIKit

class Exchange {

    var currencies: [Currency] = []
    
    func createCurrency() -> [Currency] {
        let euro = Currency(flag:#imageLiteral(resourceName: "Europe") , shortLabel: "EUR", name: "Euro", image: #imageLiteral(resourceName: "british-pound"), amount: "1000")
        let dollar = Currency(flag: #imageLiteral(resourceName: "USA"), shortLabel: "USD", name: "US-Dollar", image: #imageLiteral(resourceName: "us-dollar"), amount: "1000")
         return [euro, dollar]
    }

}

class Currency {
    
    var flag: UIImage
    var shortLabel: String
    var name: String
    var image: UIImage
    var amount: String
    
    init(flag: UIImage, shortLabel: String, name: String, image: UIImage, amount: String) {
        self.flag = flag
        self.shortLabel = shortLabel
        self.name = name
        self.image = image
        self.amount = amount
    }
}
