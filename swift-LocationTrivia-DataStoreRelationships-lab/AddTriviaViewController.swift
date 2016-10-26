//
//  AddTriviaViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Henry Chan on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddTriviaViewController: UIViewController {
    
    var location = Location()
    
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var triviaTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cancelButton.accessibilityLabel = "Cancel Button"
        cancelButton.accessibilityIdentifier = "Cancel Button"
        submitButton.accessibilityLabel = "Save Button"
        submitButton.accessibilityIdentifier = "Save Button"
        triviaTextField.accessibilityLabel = "Trivium Text Field"
        triviaTextField.accessibilityIdentifier = "Trivium Text Field"
        
        
        
    }
    
    
    
    @IBAction func cancelAction(_ sender: AnyObject) {
        
        dismiss(animated: false, completion: nil)
    }

    
    @IBAction func submitAction(_ sender: AnyObject) {
        
        guard let triviaText = triviaTextField.text else {return} 
        
        let newTrivium = Trivium(content: triviaText, likes: 0)
        location.trivia.append(newTrivium)
        
        
        dismiss(animated: true, completion: nil)
        
    }
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
