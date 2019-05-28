//
//  DefinitionViewController.swift
//  Swift Vocabulary New
//
//  Created by Alex Shillingford on 5/28/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var labelWordOutlet: UILabel!
    @IBOutlet weak var textViewDefinitionOutlet: UITextView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var vocabWord: VocabularyWord? {
        didSet{
            if let _ = view {
                updateViews()
            }
        }
    }
    
    func updateViews() {
        guard let unwrappedVocabWord = vocabWord else { return }
        labelWordOutlet.text = unwrappedVocabWord.word
        textViewDefinitionOutlet.text = unwrappedVocabWord.definition
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
