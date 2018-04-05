//
//  AddNotesContract.swift
//  Notes
//
//  Created by Anand on 05/04/18.
//  Copyright © 2018 [AP]. All rights reserved.
//

import Foundation
import UIKit


protocol AddNotesDisplaying: class  {
    var presenter: AddNotesPresenting? {get set}
}

protocol AddNotesRouting: class {
    
    weak var view: AddNotesViewController? {get set}
    static func make(notesModel: NotesModel?) -> UIViewController
}

protocol AddNotesPresenting {
    var view: AddNotesDisplaying? {get set}
    func saveNotes(text: String)
    func fetchText() -> String
}


protocol AddNotesInteracting: class {
    func saveNotes(text: String)
    func fetchText() -> String
}
