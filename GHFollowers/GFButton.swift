//
//  GFButton.swift
//  GHFollowers
//
//  Created by Pritesh on 13/06/26.
//

import UIKit

class GFButton: UIButton {
    
//     inherits features from parent class ie UIButton
    override init(frame: CGRect) {
        // to get parent features
        super.init(frame: frame)
        configure()
    }
    
    // this method is used when button is initialized using storyboard
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String){
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    // setting look of button
    private func configure() {
        layer.cornerRadius = 10
        titleLabel?.textColor = .white
        
        // using built in fonts
        // using this line of code font will be adjusted by setting of mobile
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        
        // using auto layout - we decide constraints and size
        translatesAutoresizingMaskIntoConstraints = false
    }
}
