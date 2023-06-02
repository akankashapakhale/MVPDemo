//
//  Presenter.swift
//  MVPDemo
//
//  Created by Akanksha Pakhale on 24/03/23.
//

import Foundation

protocol VCDelegate {
    func showMessage(message:String)
    func userSuccessfullyLoggedIN()
}
class VCPresenter: NSObject {
    var delegate: VCDelegate!
    func validateData(userName:String, password: String) -> Void{
        if userName.count != 0 {
            if password.count != 0 {
                verify(userName: userName, password: password)
            } else {
                self.delegate.showMessage(message: "password Should not be empty")
            }
        } else {
            self.delegate.showMessage(message: "User should not be empty")
        }
    }
    fileprivate func verify(userName: String, password: String){
        if userName == "test" && password == "123456" {
            let user = User(name: "test", email: "test@gmail.com", gender: "male")
            self.delegate.userSuccessfullyLoggedIN()
        } else {
            self.delegate.showMessage(message: "Please Enter Valid Email and password")
        }
    }
}
