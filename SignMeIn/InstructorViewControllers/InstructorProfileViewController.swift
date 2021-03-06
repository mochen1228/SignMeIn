//
//  instructorProfileViewController.swift
//  SignMeIn
//
//  Created by ChenMo on 3/14/19.
//  Copyright © 2019 ChenMo. All rights reserved.
//

import UIKit
import Parse

class InstructorProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadProfile()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var firstnameLabel: UILabel!
    @IBOutlet weak var lastnameLabel: UILabel!
    
    @IBAction func onLogoutButton(_ sender: Any) {
        // Logout and segue to the initial VC
        let main = UIStoryboard(name: "Main", bundle: nil)
        let loginViewController = main.instantiateViewController(withIdentifier: "initialViewController")
        let delegate = UIApplication.shared.delegate as! AppDelegate
        delegate.window?.rootViewController = loginViewController
        PFUser.logOut()
    }
    
    func loadProfile() {
        let currentUser = PFUser.current()!
        usernameLabel.text = currentUser.username
        firstnameLabel.text = currentUser["firstname"] as? String
        lastnameLabel.text = currentUser["lastname"] as? String
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
