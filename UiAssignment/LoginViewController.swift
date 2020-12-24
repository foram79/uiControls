//
//  LoginViewController.swift
//  UiAssignment
//
//  Created by PCQ226 on 21/12/20.
//

import UIKit

class LoginViewController: ViewController {

    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var LoginLabel: UILabel!
    
    @IBOutlet weak var passwordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func SignInPressed(_ sender: UIButton) {
    }
}
