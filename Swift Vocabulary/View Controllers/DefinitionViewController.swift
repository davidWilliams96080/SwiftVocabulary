//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by David Williams on 1/29/20.
//  Copyright © 2020 david williams. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

     var vocabularyWord: VocabularyWord?
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        if let vocabWord = vocabularyWord {
            // title = vocabWord.word  // for fun sending the word to the title
            wordLabel.text = vocabWord.word + ":"
            wordLabel.textColor = .orange
            wordLabel.font = .boldSystemFont(ofSize: 35)
            
            definitionTextView.text = vocabWord.definition
            definitionTextView.font = .italicSystemFont(ofSize: 20)
        }
    }
}
