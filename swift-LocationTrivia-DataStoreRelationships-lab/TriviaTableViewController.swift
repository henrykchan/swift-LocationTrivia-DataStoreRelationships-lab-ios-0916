//
//  TriviaTableViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Henry Chan on 10/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class TriviaTableViewController: UITableViewController {
    
    
    var location: Location = Location()

    override func viewDidLoad() {
        super.viewDidLoad()

       
        tableView.accessibilityLabel = "Trivia Table"
        tableView.accessibilityIdentifier = "Trivia Table"
        self.navigationItem.rightBarButtonItem?.accessibilityIdentifier = "Add Trivia Button"
        self.navigationItem.rightBarButtonItem?.accessibilityLabel = "Add Trivia Button"
        
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        tableView.reloadData()
    }
    

   

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        print("AAAA")
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print ("BBBBB")
        return location.trivia.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "triviaCell", for: indexPath)
        let row = location.trivia[indexPath.row]
        cell.textLabel?.text = row.content
        cell.detailTextLabel?.text = String(row.likes)
        
        print("CCCCCCC")
        return cell
    }
 

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "triviaSegue" {
            
            let destVC = segue.destination as! AddTriviaViewController
            destVC.location = self.location
            
            
            print("DDDDDD")
            
            
            
            
        }
        
    }
 

}
