//
//  WelcomeViewController.swift
//  SignMeIn
//
//  Created by ChenMo on 2/26/19.
//  Copyright © 2019 ChenMo. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        roundedLoginButton.layer.cornerRadius = 25
        roundedSignUpButton.layer.cornerRadius = 25
    
    }
    
    @IBOutlet weak var roundedLoginButton: UIButton!
    @IBOutlet weak var roundedSignUpButton: UIButton!
    
    @IBAction func onLoginButton(_ sender: Any) {
        // Placeholder, segue currently performed directly by SB
    }
    
    @IBAction func onSignupButton(_ sender: Any) {
        // Placeholder, segue currently performed directly by SB
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
