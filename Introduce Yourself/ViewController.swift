//
//  ViewController.swift
//  Introduce Yourself
//
//  Created by Fredy Camas on 1/15/24.
//

import UIKit

class ViewController: UIViewController,StudentViewDelegate {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        view.backgroundColor = .white
        
        studentView.delegate = self
        view.addSubview(studentView)
        setupConstraints()
    }

    var studentView: StudentView = {
        let view = StudentView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()

    func setupConstraints() {
        NSLayoutConstraint.activate([
            studentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            studentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            studentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            studentView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -32),
        ])
    }
    
    func introduceSelfButtonPressed(withInfo info: String) {
        showAlert(with: "My Introduction", message: info)
    }
    
    func showAlert(with title: String, message: String) {
           let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
           let okAction = UIAlertAction(title: "Done", style: .default, handler: nil)
           alertController.addAction(okAction)
           present(alertController, animated: true, completion: nil)
       }
}
