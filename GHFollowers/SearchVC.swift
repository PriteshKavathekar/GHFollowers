//
//  SearchVC.swift
//  GHFollowers
//
//  Created by Pritesh on 12/06/26.
//

import UIKit

class SearchVC: UIViewController {
    
    let logoImageView = UIImageView()
    let usernameTextField = GFTextField()
    let callToActionButton = GFButton(backgroundColor: .systemGreen, title: "Get Followers")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // by this it will adapt white when light mode and black when dark mode
        view.backgroundColor = .systemBackground
        
        configureLogoImageView()
        configureTextField()
        configureCallToActionButton()

    }
    
    // this is called every time the view appears
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // to hide navigation when going back to searchVC screen
        navigationController?.isNavigationBarHidden = true
    }
    
    func configureLogoImageView() {
        // adding subview to add image
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "gh-logo")
        
        // custom layout all the elements on the screen
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func configureTextField(){
        view.addSubview(usernameTextField)
        
        NSLayoutConstraint.activate([
            // distance from bottom of logo
            usernameTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 48),
            // starting distance of text field
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            // ending distance of text field
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            // height of text field
            usernameTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configureCallToActionButton(){
        view.addSubview(callToActionButton)
        
        NSLayoutConstraint.activate([
            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            callToActionButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
