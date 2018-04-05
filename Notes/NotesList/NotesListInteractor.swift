//
//  NotesListInteractor.swift
//  Notes
//
//  Created by Anand on 05/04/18.
//  Copyright © 2018 [AP]. All rights reserved.
//

import Foundation
import  UIKit


class NotesListInteractor: NotesListInteracting {
    
    var appDelegate: AppDelegate
    
    init(_ appDelegate: AppDelegate? = nil) {
        self.appDelegate = UIApplication.shared.delegate as! AppDelegate
    }
    
    func fetchNotesList() -> [NotesModel] {
        //using database for now
        //we can fetch from server too from here by making an API call and using protocols
        guard let notesList = appDelegate.fetchNotes() else {return []}
        return notesList
    }
    
}
