//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Alexander on 07.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet private var welcomeLabel: UILabel!

    //MARK: - Public Properties
    var userName = ""

    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Welcome, \(userName)\n👋"
    }
}
