# LogIn app

The training project for creating applications using the UIKit framework.

## Objectives of the project:
- Getting to know the NavigationController, TabBarController and AlertController
- Learn type control and adjustment and data transfer via segues

## Technical assignment
![login_app.gif](/gifs/login_app.gif)

### Create an application with two screens
- The first LoginViewController screen should be responsible for user authorization. On the second screen of WelcomeViewController you need to display its name and the LogOut button.
- The user name must be passed to the second screen when you switch from the authorization screen. When returning to the first screen, the data in the text fields must be cleaned.

### Pay attention to the keyboard
- You must disable autocorrection and predictive input when entering the user name.
When entering a password, the characters you enter must be hidden.
- Work on hiding the keyboard. Hide the keyboard by taping on the screen.
- Work on the Return button. You should rename the button to Next when you type a user name, and to Done when you type a password. Program this button depending on the location of the cursor. When you click on the Next button, move the cursor to the password field. While the password field is empty, the Done button should be disabled. The Done button should duplicate the logic of the Log In button.
