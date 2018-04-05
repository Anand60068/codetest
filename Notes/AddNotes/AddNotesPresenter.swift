//
//  AddNotesPresenter.swift
//  Notes
//
//  Created by Anand on 05/04/18.
//  Copyright © 2018 [AP]. All rights reserved.
//

import Foundation

class AddNotePresenter: AddNotesPresenting {
    weak var view: AddNotesDisplaying?
    var interactor: AddNotesInteracting?
    
    func saveNotes(text: String) {
        interactor?.saveNotes(text: text)
    }
    
    func fetchText() -> String {
        return interactor?.fetchText() ?? ""
    }
    
}
