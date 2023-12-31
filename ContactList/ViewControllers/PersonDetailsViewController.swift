//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Антон Пеньков on 15.12.2023.
//

import UIKit

final class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        phoneLabel.text = String(person.phoneNumber)
        emailLabel.text = person.email
    }
}
