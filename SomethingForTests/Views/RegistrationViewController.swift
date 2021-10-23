//
//  ViewController.swift
//  SomethingForTests
//
//  Created by Александр on 22.10.2021.
//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    var delegate: RegistrationViewControllerDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveButtonPressed(_ sender: Any) {
        let userPerson = Person(
            name: nameTextField.text ?? "",
            surname: surnameTextField.text ?? "",
            phone: phoneTextField.text ?? ""
        )
        delegate.createPerson(person: userPerson)
        dismiss(animated: true)
    }
    
    @IBAction func cancelBurronPressed(_ sender: Any) {
        dismiss(animated: true)
    }
}

