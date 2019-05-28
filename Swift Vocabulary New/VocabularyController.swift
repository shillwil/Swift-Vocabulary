//
//  VocabularyController.swift
//  Swift Vocabulary New
//
//  Created by Alex Shillingford on 5/28/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import Foundation

class VocabularyController {
    let vocabWords: [VocabularyWord]
    
    init() {
        self.vocabWords = [VocabularyWord(word: "iOS", definition: "an operating system used for mobile devices manufactured by Apple Inc"),
                           VocabularyWord(word: "Software", definition: "The programs and other operating information used by a computer"),
                           VocabularyWord(word: "Lambda", definition: "The eleventh letter of the Greek alphabet"),
                           VocabularyWord(word: "Development", definition: "The process of developing or being developed"),
                           VocabularyWord(word: "Metadata", definition: "A set of data that describes or gives information about other data"),
                           VocabularyWord(word: "Application", definition: "The action of putting something into operation"),
                           VocabularyWord(word: "Slack", definition: "Not taut or tightly held in position; loose")]
    }
}
