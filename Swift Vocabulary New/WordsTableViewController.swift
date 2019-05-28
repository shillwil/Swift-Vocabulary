//
//  WordsTableViewController.swift
//  Swift Vocabulary New
//
//  Created by Alex Shillingford on 5/28/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabController: VocabularyController = VocabularyController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabController.vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        cell.textLabel?.text = vocabController.vocabWords[indexPath.row].word

        return cell
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow,
            let definitionVC = segue.destination as? DefinitionViewController {
                let cellWord = self.vocabController.vocabWords[indexPath.row]
        
            //This is added to say I want to instantiate the view before the segue. Make sure that the view is instantiated prior to the segue
                definitionVC.vocabWord = cellWord
        
            
            
        }
    }
    

}
