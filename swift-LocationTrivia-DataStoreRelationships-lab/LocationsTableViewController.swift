//
//  LocationsTableViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Henry Chan on 10/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class LocationsTableViewController: UITableViewController {
    
    var store =  LocationDataStore.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.accessibilityLabel = "Locations Table"
        tableView.accessibilityIdentifier = "Locations Table"
        self.navigationItem.rightBarButtonItem?.accessibilityLabel = "addButton"
        self.navigationItem.rightBarButtonItem?.accessibilityIdentifier = "addButton"
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
       
        tableView.reloadData()
    }

    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return store.locations.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "rightDetail", for: indexPath)
        
        let row = store.locations[indexPath.row]
        
        cell.textLabel?.text = row.name
        
        cell.detailTextLabel?.text = String(row.trivia.count)
        
        return cell
        

    }
    

    


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailSegue" {
            
            let destVC = segue.destination as! TriviaTableViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                let selectedPath = store.locations[indexPath.row]
                destVC.location = selectedPath
                
              
            }
        }
        
    }
    

}
