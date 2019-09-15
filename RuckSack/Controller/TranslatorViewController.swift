//
//  TranslatorViewController.swift
//  Bundle
//
//  Created by Patrick Wiley on 29.08.19.
//  Copyright © 2019 Patrick Wiley. All rights reserved.
//

import UIKit

class TranslatorViewController: ViewController {
    
    var translate = Translate()
    
    @IBOutlet var tableViewTranslator: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableViewTranslator.estimatedRowHeight = 200
        translate.languages = translate.createLanguage()
        

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        tableViewTranslator.backgroundView = UIImageView(image: UIImage(named: "Background_Translator"))
        
    }

   

}

extension TranslatorViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return translate.languages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let language = translate.languages[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "LanguageCell") as! LanguageCell
        
        cell.setLanguage(language: language)
        return cell
    }
//    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
//        if (text == "\n")
//        {
//            
//            self.view.endEditing(true);
//            return false;
//        }
//        return true
//    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
        
    }
}
