//
//  DataStore.swift
//  ContactList
//
//  Created by Антон Пеньков on 15.12.2023.
//

import Foundation

class DataStore {
    
    var firstNames = [
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
    
    var lastNames = [
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
    
    var phoneNumbers = (0...10).map { _ in Int.random(in: 381000000000...381999999999) }

}
