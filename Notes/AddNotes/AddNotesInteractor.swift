//
//  AddNotesInteractor.swift
//  Notes
//
//  Created by Anand on 05/04/18.
//  Copyright © 2018 [AP]. All rights reserved.
//

import Foundation
import UIKit

class AddNotesInteractor: AddNotesInteracting {
    
    var appDelegate: AppDelegate
    
    var notesModel: NotesModel?
    
    init(model: NotesModel?) {
        self.appDelegate = UIApplication.shared.delegate as! AppDelegate
        self.notesModel = model
    }
    
    func fetchText() -> String {
        guard let notes = notesModel?.note else { return "" }
        return notes
        
    }
    
    func saveNotes(text: String) {
        appDelegate.addNotes(notesModel: notesModel, text: text)
    }
    
    
}
