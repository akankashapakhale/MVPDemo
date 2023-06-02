//
//  ViewController.swift
//  MVPDemo
//
//  Created by Akanksha Pakhale on 24/03/23.
//

import UIKit

class ViewController: UIViewController, VCDelegate {
    func userSuccessfullyLoggedIN() {
        self.lblerror.text = "User logged In"
        self.lblerror.textColor = UIColor.blue
    }
    
    @IBOutlet weak var txtuser: UITextField!
    
    @IBOutlet weak var txtpass: UITextField!
    @IBOutlet weak var lblerror: UILabel!
    var presenter: VCPresenter!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblerror.isHidden = true
        presenter = VCPresenter()
        presenter.delegate = self
     
    }

    @IBAction func proceed(_ sender: Any) {
        lblerror.isHidden = false
        self.presenter.validateData(userName: txtuser.text!, password: txtpass.text!)
    }
    func showMessage(message: String) {
        self.lblerror.isHidden = false
        self.lblerror.textColor = UIColor.red
        self.lblerror.text = message
    }
}

