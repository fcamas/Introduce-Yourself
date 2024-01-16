//
//  Person.swift
//  Introduce Yourself
//
//  Created by Fredy Camas on 1/15/24.
//

import UIKit

protocol StudentViewDelegate {
    func introduceSelfButtonPressed(withInfo info: String)
}

class StudentView: UIView, UITextFieldDelegate {
    
    var delegate: StudentViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "schoolimg")
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .red
        return imageView
    }()
    
    ///  'nameLabel' student label for first name
    var nameLabel: UILabel = {
        var label = UILabel()
        label.text = "First"
       // label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    /// 'nametextField'  student textfield for first name
    var nameTextField: UITextField = {
        var txtfield = UITextField()
        txtfield.borderStyle = .roundedRect
        txtfield.translatesAutoresizingMaskIntoConstraints = false
        return txtfield
    }()
    
    ///  'lastLabel' student label for last name
    var lastLabel: UILabel = {
        var label = UILabel()
        label.text = "Last"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    /// 'lastTextfield' student textfield for last name
    var lastTextField: UITextField = {
        var txtfield = UITextField()
        txtfield.borderStyle = .roundedRect
        txtfield.translatesAutoresizingMaskIntoConstraints = false
        return txtfield
    }()
    
    ///  'lastLabel' student label for school
    var schoolLabel: UILabel = {
        var label = UILabel()
        label.text = "School"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    /// 'lastTextfield' student textfield for school
    var schoolTextField: UITextField = {
        var txtfield = UITextField()
        txtfield.borderStyle = .roundedRect
        txtfield.translatesAutoresizingMaskIntoConstraints = false
        return txtfield
    }()
    
    var academicYear: UISegmentedControl = {
        let years = ["First", "Second", "Third", "Fourth"]
        let sc = UISegmentedControl(items: years)
        sc.selectedSegmentIndex = 0
        sc.translatesAutoresizingMaskIntoConstraints = false
        return sc
    }()
    
    
    var petLabel: UILabel = {
        var label = UILabel()
        label.text = "Pet"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var numberOfPetLabel: UILabel = {
        var label = UILabel()
        label.text = "0"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var stepper: UIStepper = {
        let stepper  = UIStepper()
        stepper.translatesAutoresizingMaskIntoConstraints = false
        return stepper
    }()
    
    var morePetsLabel: UILabel = {
        var label = UILabel()
        label.text = "More Pets?"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var switcher: UISwitch = {
        let switcher = UISwitch()
        switcher.translatesAutoresizingMaskIntoConstraints = false
        return switcher
    
    }()
    
    var switchChangeLabel: UILabel = {
        var label = UILabel()
        label.text = "More Pets?"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var introduceSelf: UIButton = {
        let button = UIButton()
        button.setTitle("Introduce Self", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    func setupUI() {
        addSubview(imageView)
        addSubview(nameLabel)
        addSubview(nameTextField)
        addSubview(lastLabel)
        addSubview(lastTextField)
        addSubview(schoolLabel)
        addSubview(schoolTextField)
        addSubview(academicYear)
        addSubview(petLabel)
        addSubview(numberOfPetLabel)
        addSubview(stepper)
        addSubview(morePetsLabel)
        addSubview(switcher)
        addSubview(introduceSelf)
        
        nameTextField.delegate = self
        lastTextField.delegate = self
        schoolTextField.delegate = self
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            imageView.heightAnchor.constraint(equalToConstant: 200),
       
            nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nameLabel.widthAnchor.constraint(equalToConstant: 60),
            nameLabel.heightAnchor.constraint(equalToConstant: 32),
           
            
            nameTextField.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            nameTextField.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 5),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            nameTextField.heightAnchor.constraint(equalToConstant: 32),
            
            lastLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            lastLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            lastLabel.widthAnchor.constraint(equalToConstant: 60),
            lastLabel.heightAnchor.constraint(equalToConstant: 32),
            
            lastTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10),
            lastTextField.leadingAnchor.constraint(equalTo: lastLabel.trailingAnchor, constant: 5),
            lastTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            lastTextField.heightAnchor.constraint(equalToConstant: 32),
            
            schoolLabel.topAnchor.constraint(equalTo: lastLabel.bottomAnchor, constant: 10),
            schoolLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            schoolLabel.widthAnchor.constraint(equalToConstant: 60),
            schoolLabel.heightAnchor.constraint(equalToConstant: 32),
            
            schoolTextField.topAnchor.constraint(equalTo: lastTextField.bottomAnchor, constant: 10),
            schoolTextField.leadingAnchor.constraint(equalTo: schoolLabel.trailingAnchor, constant: 5),
            schoolTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            schoolTextField.heightAnchor.constraint(equalToConstant: 32),
            
            academicYear.topAnchor.constraint(equalTo: schoolLabel.bottomAnchor, constant: 64),
            academicYear.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            academicYear.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            petLabel.topAnchor.constraint(equalTo: academicYear.bottomAnchor, constant: 64),
            petLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            petLabel.widthAnchor.constraint(equalToConstant: 60),
            petLabel.heightAnchor.constraint(equalToConstant: 32),
            
            numberOfPetLabel.topAnchor.constraint(equalTo: academicYear.bottomAnchor, constant: 64),
            numberOfPetLabel.leadingAnchor.constraint(equalTo: petLabel.trailingAnchor, constant: 8),
            numberOfPetLabel.widthAnchor.constraint(equalToConstant: 60),
            numberOfPetLabel.heightAnchor.constraint(equalToConstant: 32),
            
            stepper.topAnchor.constraint(equalTo: academicYear.bottomAnchor, constant: 64),
            stepper.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            morePetsLabel.topAnchor.constraint(equalTo: petLabel.bottomAnchor, constant: 10),
            morePetsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            morePetsLabel.widthAnchor.constraint(equalToConstant: 120),
            morePetsLabel.heightAnchor.constraint(equalToConstant: 32),
            
            switcher.topAnchor.constraint(equalTo: petLabel.bottomAnchor, constant: 10),
            switcher.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            introduceSelf.centerXAnchor.constraint(equalTo: centerXAnchor),
            introduceSelf.centerYAnchor.constraint(equalTo: bottomAnchor, constant: -20),
        ])
        introduceSelf.addTarget(self, action: #selector(introduceSelfButtonPressed), for: .touchUpInside)
        stepper.addTarget(self, action: #selector(stepperValueChanged), for: .valueChanged)
        switcher.addTarget(self, action: #selector(onSwitchChange), for: .valueChanged)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           if textField == nameTextField {
               lastTextField.becomeFirstResponder()
           } else if textField == lastTextField {
               schoolTextField.becomeFirstResponder()
           } else if textField == schoolTextField {
               textField.resignFirstResponder()
           } else {
               textField.resignFirstResponder()
           }

           return true
       }
    
    @objc func introduceSelfButtonPressed() {
        // Implement the action for the introduceSelf button
        
        let name = nameTextField.text ?? ""
        let lastName = lastTextField.text ?? ""
        let school = schoolTextField.text ?? ""
        let pets = numberOfPetLabel.text ?? ""
        let year = academicYear.titleForSegment(at: academicYear.selectedSegmentIndex) ?? ""
        let morePets = switcher.isOn.description
        
        
        let studentInfo = "My name is \(name) \(lastName) and I attended \(school) University. I am currently in my \(year) year. I own \(pets) pets and it is \(morePets) that I want more pets."
                
        delegate?.introduceSelfButtonPressed(withInfo: studentInfo)
    }
    
    @objc func stepperValueChanged() {
        numberOfPetLabel.text = "\(Int(stepper.value))"
    }
    
    @objc func onSwitchChange() {
        switchChangeLabel.text =  switcher.isOn.description
    }
}
