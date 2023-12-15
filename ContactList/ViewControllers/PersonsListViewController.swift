//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Антон Пеньков on 15.12.2023.
//

import UIKit

class PersonsListViewController: UITableViewController {

    private let personsList = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let detailsVC = segue.destination as? PersonDetailsViewController
        detailsVC?.person = personsList[indexPath.row]
        
//        let sectionsVC = segue.destination as? PersonsSectionsViewController
//        sectionsVC?.personsList = personsList
    }
}

// MARK: - UITableViewDataSource
extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let person = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
    }
}
