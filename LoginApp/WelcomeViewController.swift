//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Alexander on 07.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeString: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = welcomeString
    }
}
