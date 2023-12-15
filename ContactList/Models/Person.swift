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
        "\(firstName.lowercased())_\(lastName.lowercased())@gmail.com"
    }
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        let dataStore = DataStore()
        
        for _ in 1...dataStore.firstNames.count - 1 {
            let newCount = dataStore.firstNames.count - 1
            let firstName = dataStore.firstNames.remove(at: Int.random(in: 0...newCount))
            let lastName = dataStore.lastNames.remove(at: Int.random(in: 0...newCount))
            let phoneNumber = dataStore.phoneNumbers.remove(at: Int.random(in: 0...newCount))
            
            persons.append(
                Person(
                    firstName: firstName,
                    lastName: lastName,
                    phoneNumber: phoneNumber
                )
            )
        }
        
        return persons
    }
}
