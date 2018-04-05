//
//  NotesListPresenter.swift
//  Notes
//
//  Created by Anand on 05/04/18.
//  Copyright © 2018 [AP]. All rights reserved.
//

import Foundation

class NotesListPresenter: NotesListPresenting {

    var interactor: NotesListInteracting?
    var router: NotesListRouting?
    var noteList: [NotesModel]?
    
    weak var view: NotesListDisplaying?
    
    func viewDidLoad() {
        noteList = interactor?.fetchNotesList()
        view?.reloadTableView()
    }
    
    func numberOfRows() -> Int {
        return noteList?.count ?? 0
    }
    
    func itemAtIndex(row: Int) -> String {
        guard let notes = noteList?[row] else {return ""}
        return notes.note ?? "n/a"
    }
    
    func didSelect(row: Int) {
        guard let notes = noteList?[row] else {return}
        router?.goToNoteScreen(model: notes)
    }
    
    func gotoAddNotes() {
        router?.goToNoteScreen(model: nil)
    }
    
}
