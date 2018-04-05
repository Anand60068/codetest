//
//  AddNotesViewController.swift
//  Notes
//
//  Created by Anand on 05/04/18.
//  Copyright © 2018 [AP]. All rights reserved.
//

import Foundation
import  UIKit

class AddNotesViewController: UIViewController, AddNotesDisplaying, UITextViewDelegate {
    var presenter: AddNotesPresenting?
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textLength: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
        let text = presenter?.fetchText()
        textView.text = text
        textLength.text = "Text length: \(textView.text.count)"
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        guard  let text =  textView.text, textView.text.count > 0 else {
            return
        }
        presenter?.saveNotes(text: text)
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if textView.text.count >= 300 {
            return false
        }
        textLength.text = "Text length: \(textView.text.count)"
        return true
    }
    
}
