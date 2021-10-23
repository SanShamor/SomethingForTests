//
//  PersonTableViewController.swift
//  SomethingForTests
//
//  Created by Александр on 22.10.2021.
//

import UIKit

protocol RegistrationViewControllerDelegate {
    func createPerson(person: Person)
}

class PersonTableViewController: UITableViewController {
    
    var personList: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personList[indexPath.row]
        
        content.text = person.name
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let showingPerson = personList[indexPath.row]
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailPersonVC = segue.destination as? RegistrationViewController else { return }
        detailPersonVC.delegate = self
    }
       
}

extension PersonTableViewController: RegistrationViewControllerDelegate {
    func createPerson(person: Person) {
        personList.append(person)
    }
    
    
}
