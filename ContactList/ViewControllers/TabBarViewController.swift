//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Антон Пеньков on 15.12.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    private let personsList = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UITabBarAppearance()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance

        transferData()
    }

    private func transferData() {
        guard let viewControllers else { return }
        
        if let listNavigationVC = viewControllers.first as? UINavigationController {
            let listVC = listNavigationVC.topViewController
            guard let listVC = listVC as? PersonsListViewController else { return }
            listVC.personsList = personsList
        }
        if let sectionsNavigationVC = viewControllers.last as? UINavigationController {
            let sectionsVC = sectionsNavigationVC.topViewController
            guard let sectionsVC = sectionsVC as? PersonsSectionsViewController else { return }
            sectionsVC.personsList = personsList
        }
    }
}
