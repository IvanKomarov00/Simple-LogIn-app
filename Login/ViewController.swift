//
//  ViewController.swift
//  Login
//
//  Created by Ivan Komarov on 15.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextfield: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /*
        if segue.identifier == "unloggedScreen"{
            segue.destination.title = "No"
        }else if segue.identifier == "loggedScreen"{
            segue.destination.navigationItem.title = usernameTextfield.text
        }
         */
        guard let sender = sender as? UIButton else{return}
        
        if sender == forgotPasswordButton{
            segue.destination.navigationItem.title = "Forgot Password"
        }else if sender == forgotUsernameButton{
            segue.destination.navigationItem.title = "Forgot Username"
        }else{
            segue.destination.navigationItem.title = usernameTextfield.text
        }
        
            
        
            
        
    }

    @IBAction func forgetUsernameTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "unloggedScreen", sender: sender)
    }
    @IBAction func forgetPasswordTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "unloggedScreen", sender: sender)
    }
    
    
}

