//
//  ViewController.swift
//  Todonext
//
//  Created by E.J. van de Klashorst on 09/08/2019.
//  Copyright © 2019 Bytle. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Fc Utrecht" , "SVVU", "jong Fc Utrecht"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // number of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemArray.count
    }
    
    // ask datasource for a cell to insert in particular location of tableview
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
    }
    
    
    
}

