//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Alexander on 07.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet var welcomeLabel: UILabel!

    //MARK: - Public Properties
    var welcomeString: String!

    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = welcomeString
    }
}
