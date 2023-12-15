//
//  PersonsSectionsViewController.swift
//  ContactList
//
//  Created by Антон Пеньков on 15.12.2023.
//

import UIKit

class PersonsSectionsViewController: UITableViewController {

    var personsList: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

// MARK: - UITableViewDataSource
extension PersonsSectionsViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personsList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = personsList[indexPath.section]
        
        switch indexPath.row {
        case 0:
            let phoneCell = tableView.dequeueReusableCell(withIdentifier: "phoneCell", for: indexPath)
            
            var content = phoneCell.defaultContentConfiguration()
            content.text = String(person.phoneNumber)
            content.image = UIImage(systemName: "phone")
            
            phoneCell.contentConfiguration = content
            return phoneCell
        default:
            let emailCell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath)
            
            var content = emailCell.defaultContentConfiguration()
            content.text = person.email
            content.image = UIImage(systemName: "envelope")
            
            emailCell.contentConfiguration = content
            return emailCell
        }
    }
}

// MARK: - UITableViewDelegate
extension PersonsSectionsViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
