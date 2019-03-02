//
//  LoginViewController.swift
//  GoChat
//
//  Created by Pham N. Thach on 2019/03/01.
//  Copyright © 2019 pntttt. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var anounumouslyButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        anounumouslyButton.layer.borderWidth = 2.0
        anounumouslyButton.layer.borderColor = UIColor.white.cgColor
    }
    @IBAction func loginAnonymouslyDidTapped(_ sender: Any) {
        print("ok")
    }
    @IBAction func googleLoginDidTapped(_ sender: Any) {
    }
}
