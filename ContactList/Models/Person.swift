//
//  Person.swift
//  ContactList
//
//  Created by Антон Пеньков on 15.12.2023.
//

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: Int
    
    var email: String {
        "\(firstName)\(lastName)@gmail.com"
    }
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPersons() -> [Person] {
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
