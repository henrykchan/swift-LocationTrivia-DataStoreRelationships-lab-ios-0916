//
//  AddLocationViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Henry Chan on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddLocationViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var longitudeLabel: UITextField!
    @IBOutlet weak var latitudeLabel: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.accessibilityLabel = "nameField"
        nameLabel.accessibilityIdentifier = "nameField"
        longitudeLabel.accessibilityLabel = "longitudeField"
        longitudeLabel.accessibilityIdentifier = "longitudeField"
        latitudeLabel.accessibilityLabel = "latitudeField"
        latitudeLabel.accessibilityIdentifier = "latitudeField"
        
        
        saveButton.accessibilityIdentifier = "saveButton"
        saveButton.accessibilityLabel = "saveButton"
        cancelButton.accessibilityIdentifier = "cancelButton"
        cancelButton.accessibilityLabel = "cancelButton"
        
        
    }
    
    
    @IBAction func saveAction(_ sender: AnyObject) {
        
        guard let name = nameLabel.text, let longitude = Float(longitudeLabel.text!), let latitude = Float(latitudeLabel.text!) else { return }
        
        let theLocation = Location(name: name, latitude: longitude, longitude: latitude)
        
        LocationDataStore.sharedInstance.locations.append(theLocation)
        
//        dump (LocationDataStore.sharedInstance.locations)
        
        self.dismiss(animated: true, completion: nil)
  
        
    }
    
    

    @IBAction func cancelAction(_ sender: AnyObject) {
        
        dismiss(animated: false, completion: nil)
        
    }
  
    



}
