//
//  DataStore.swift
//  ContactList
//
//  Created by Антон Пеньков on 15.12.2023.
//

import Foundation

class DataStore {
    
    let firstNames = [
        "Sharon",
        "Ted",
        "Tim",
        "Allan",
        "Bruce",
        "Carl",
        "Nicola",
        "John",
        "Aaron",
        "Steven"
    ]
    
    let lastNames = [
        "Robertson",
        "Murphy",
        "Pennyworth",
        "Jankin",
        "Isaacson",
        "Butler",
        "Black",
        "Smith",
        "Williams",
        "Dow"
    ]
    
    let phoneNumbers = (0...10).map { _ in Int.random(in: 1000000...9999999) }
    
    
    func getPersons() -> [Person] {
        [
        Person(firstName: "Sharon", lastName: "Robertson", phoneNumber: 74927292),
        Person(firstName: "Ted", lastName: "Murphy", phoneNumber: 74927292),
        Person(firstName: "Tim", lastName: "Pennyworth", phoneNumber: 74927292),
        Person(firstName: "Allan", lastName: "Jankin", phoneNumber: 74927292),
        Person(firstName: "Bruce", lastName: "Isaacson", phoneNumber: 74927292),
        Person(firstName: "Carl", lastName: "Butler", phoneNumber: 74927292),
        Person(firstName: "Nicola", lastName: "Black", phoneNumber: 74927292),
        Person(firstName: "John", lastName: "Smith", phoneNumber: 74927292),
        Person(firstName: "Aaron", lastName: "Williams", phoneNumber: 74927292),
        Person(firstName: "Steven", lastName: "Dow", phoneNumber: 74927292),
        ]
    }
}
