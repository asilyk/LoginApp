//
//  ViewController.swift
//  LoginApp
//
//  Created by Alexander on 06.01.2022.
//

import UIKit

class LogInViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet private var userNameTF: UITextField!
    @IBOutlet private var passwordTF: UITextField!

    @IBOutlet private var logInButton: UIButton!

    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Override Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    //MARK: - IB Actions
    @IBAction private func forgotUserNameButtonPressed() {
        showAlert(title: "Oops!", message: "Your name is User 😉")
    }

    @IBAction private func forgotPasswordButtonPressed() {
        showAlert(title: "Oops!", message: "Your password is Password 😉")
    }

    @IBAction private func logInButtonPressed() {
        if userNameTF.text != "User", passwordTF.text != "Password" {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password"
            )
            passwordTF.text = nil
        }
    }

    //MARK: - Private Methods
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}
