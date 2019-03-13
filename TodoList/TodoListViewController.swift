//
//  ViewController.swift
//  TodoList
//
//  Created by Ashish on 3/12/19.
//  Copyright © 2019 Greenhouse. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    // 1st step
    let itemArray = ["Find Mike", "Buy Eggs", "Destroy Demon"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK - TableView Datasource Method
    //2 part Display what cell should Display and how many rows we wanted
    //tableview number of rows in section:
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    //tableview cell for row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
        
    }
    //Mark - TableView Delegate Method
    //3
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // print(itemArray[indexPath.row])
        //yo code lay side ma checkmark laucha
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    
    
    
    
}

