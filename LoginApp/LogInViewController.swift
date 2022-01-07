//
//  ViewController.swift
//  LoginApp
//
//  Created by Alexander on 06.01.2022.
//

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {
    //MARK: - IB Outlets
    @IBOutlet private var userNameTF: UITextField!
    @IBOutlet private var passwordTF: UITextField!

    @IBOutlet private var logInButton: UIButton!

    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        userNameTF.delegate = self
        passwordTF.delegate = self
        //I have no idea what I'm doing =)

        logInButton.isEnabled = false
    }

    //MARK: - Override Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    override func shouldPerformSegue(withIdentifier _: String, sender _: Any?) -> Bool {
        if userNameTF.text != "User" || passwordTF.text != "Password" {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password"
            )
            passwordTF.text = nil
            logInButton.isEnabled = false

            return false
        }
        return true
    }

    override func prepare(for segue: UIStoryboardSegue, sender _: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeString = "Welcome, \(userNameTF.text ?? "")\n👋"
    }

    //MARK: - IB Actions
    @IBAction private func valueOfTFChanged() {
        if let userName = userNameTF.text, let password = passwordTF.text {
            if !userName.isEmpty, !password.isEmpty {
                logInButton.isEnabled = true
            } else {
                logInButton.isEnabled = false
            }
        }
    }

    @IBAction private func forgotUserNameButtonPressed() {
        showAlert(title: "Oops!", message: "Your name is User 😉")
    }

    @IBAction private func forgotPasswordButtonPressed() {
        showAlert(title: "Oops!", message: "Your password is Password 😉")
    }

    @IBAction private func unwind(for _: UIStoryboardSegue) {
        passwordTF.text = nil
        userNameTF.text = nil

        logInButton.isEnabled = false
    }

    //MARK: - Private Methods
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            view.endEditing(true)
            logInButton.sendActions(for: .touchUpInside)
        }
        return true
    }
}
