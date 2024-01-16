//
//  Person.swift
//  Introduce Yourself
//
//  Created by Fredy Camas on 1/15/24.
//

import UIKit

class StudentView: UIView{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    var nameLabel: UILabel = {
        var label = UILabel()
        label.text = "First"
        label.adjustsFontForContentSizeCategory = true
        return label
    }()
    
    var nameTextField: UITextField = {
        var txtfield = UITextField()
        txtfield.borderStyle = .roundedRect
        return txtfield
    }()
    
    func setupUI(){
        addSubview(nameLabel)
        addSubview(nameTextField)
        
        // Constraints for nameLabel
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            // Add other constraints for nameLabel as needed
        ])
        
        // Constraints for nameTextField
        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            // Add other constraints for nameTextField as needed
        ])
    }
}
