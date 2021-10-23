//
//  Person.swift
//  SomethingForTests
//
//  Created by Александр on 22.10.2021.
//

import Foundation

class Person {
    let name: String
    let surname: String?
    let phone: String?
    var image: Data?
    private(set) var date: Date
    
    init(name: String, surname: String, phone: String) {
        self.name = name
        self.surname = surname
        self.phone = phone
        date = Date()
    }
    
    init(name: String, surname: String, phone: String, image: Data? = nil) {
        self.name = name
        self.surname = surname
        self.phone = phone
        self.image = image
        date = Date()
    }
}
